//
//  ViewController.swift
//  KdolCompass
//
//  Created by ECONOTAKU on 3/5/24.
//

import UIKit
import CoreLocation

class CompassController: UIViewController {
  
  // MARK: Properties
  let compassTopView = CompassTopView()
  let compassMiddleView = CompassMiddleView()
  let compassBottomView = CompassBottomView()
  
  let locationDelegate = LocationDelegate()
  var currentLocation: CLLocation? = nil  // 실시간으로 최신의 위치값
  
  var northLocationBearing: CGFloat {     //지구 중심에서부터 두 지점을 연결한 중심각의 radian 값
    return currentLocation?.bearingToLocationRadian(self.setNorthLocation) ?? 0
  }
  
  var starLocationBearing: CGFloat {
    return currentLocation?.bearingToLocationRadian(self.setStarLocation) ?? 0
  }
  
  var setNorthLocation: CLLocation {      //중심각 radian 값이 저장되는 변수
    get { return UserDefaults.standard.northLocation }
    set { UserDefaults.standard.northLocation = newValue }
  }
  
  var setStarLocation: CLLocation {
    get { return UserDefaults.standard.savedStarLocation }
    set { UserDefaults.standard.savedStarLocation = newValue }
  }
  
  var locationManager: CLLocationManager? = {
    $0.requestWhenInUseAuthorization()
    $0.desiredAccuracy = kCLLocationAccuracyBest
    $0.startUpdatingLocation()
    $0.startUpdatingHeading()
    return $0
  }(CLLocationManager())
  
  
  // MARK: LifeCycles
  override func viewDidLoad() {
    super.viewDidLoad()
    fixedStyle()
    layout()
    settingAction()
  }
  
  override func viewWillAppear(_ animated: Bool) {
    super.viewWillAppear(animated)
    mutableStyle()
    readingDistance()
    readingDirection()
    compassBottomView.circleProgressView.isAnimationPerformed = false
    print("DDD: \(compassBottomView.circleProgressView.isAnimationPerformed)")
  }
  
  override func viewWillDisappear(_ animated: Bool) {
    super.viewWillDisappear(animated)
    
  }
  
  
}

extension CompassController {
  
  private func fixedStyle() {
    view.backgroundColor = .systemBackground
    compassTopView.translatesAutoresizingMaskIntoConstraints = false
    compassMiddleView.translatesAutoresizingMaskIntoConstraints = false
    compassBottomView.translatesAutoresizingMaskIntoConstraints = false
    self.navigationController?.navigationBar.tintColor = UIColor(named: "DeepGray")
    locationManager?.delegate = locationDelegate
    compassBottomView.circleProgressView.isAnimationPerformed = false
  }
  
  
  private func mutableStyle() {
    
    //아이돌 이름
    if let idolName = UserDefaults.standard.object(forKey: "name") as? String {
      compassTopView.idolNameLabel.text = idolName
    } else {
      compassTopView.idolNameLabel.text = "idol name"
    }
    
    //소속사 이름
    if let companyName = UserDefaults.standard.object(forKey: "company") as? String {
      compassTopView.companyNameLabel.text = companyName
    } else {
      compassTopView.companyNameLabel.text = "Agency name"
    }
    
    //프로필 이미지
    let fileURL = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)[0].appendingPathComponent("savedProfileImage.jpg")
    if let image = UIImage(contentsOfFile: fileURL.path) {
      DispatchQueue.main.async {
        self.compassTopView.profileImage.image = image
      }
    } else {
      DispatchQueue.main.async {
        self.compassTopView.profileImage.image = UIImage(named: "defaultProfile")
      }
    }
    
  }
  
  
  private func layout() {
    
    let navigateToSettingsBtn =
    UIBarButtonItem(image: UIImage(systemName: "gearshape.fill"), style: .plain, target: self, action: #selector(self.navigateToSettings))
    
    self.navigationItem.rightBarButtonItem = navigateToSettingsBtn
    
    view.addSubview(compassTopView)
    view.addSubview(compassMiddleView)
    view.addSubview(compassBottomView)
    
    NSLayoutConstraint.activate([
      compassTopView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 15),
      compassTopView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
      compassTopView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
      compassTopView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 1/7)
    ])
    
    NSLayoutConstraint.activate([
      compassMiddleView.topAnchor.constraint(equalTo: compassTopView.bottomAnchor, constant: 20),
      compassMiddleView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
      compassMiddleView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
      compassMiddleView.heightAnchor.constraint(equalTo: compassMiddleView.widthAnchor, multiplier: 1)
    ])
    
    NSLayoutConstraint.activate([
      compassBottomView.topAnchor.constraint(equalTo: compassMiddleView.bottomAnchor, constant: 20),
      compassBottomView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
      compassBottomView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
      compassBottomView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 1/7)
    ])
    
  }
  
  //현재 내 위치와 설정한 소속사 위치사이의 거리를 읽고 표현
  private func readingDistance() {
    locationDelegate.locationCallback = { location in
      self.currentLocation = location
      self.distanceLabelStyle()
    }
    distanceLabelStyle()
  }
  
  //거리 표현
  private func distanceLabelStyle() {
    
    let distance = self.currentLocation?.distance(from: self.setStarLocation)
    
    compassBottomView.circleProgressView.trackClr = UIColor(named: "SoftOrange")?.withAlphaComponent(0.5) ?? .black
    compassBottomView.circleProgressView.progressClr = UIColor(named: "DeepOrange") ?? .darkGray
    
    if !compassBottomView.circleProgressView.isAnimationPerformed {
        let circleValue = (Float(distance ?? 0) / 1000) / 40075
        compassBottomView.circleProgressView.setProgressWithAnimation(duration: 1.0, value: Float(circleValue))
        compassBottomView.circleProgressView.isAnimationPerformed = true // 애니메이션이 시작되었음을 표시
    }
    
    let boolKm = UserDefaults.standard.bool(forKey: "km")
    if boolKm {
      compassBottomView.distanceLabel.text = String(format: "%.1f", ((distance ?? 0) / 1000)) + "km"
    } else {
      compassBottomView.distanceLabel.text = String(format: "%.1f", ((distance ?? 0) * 0.000621371)) + "mile"
    }
  }
  
  
  private func readingDirection() {
    
    locationDelegate.deviceHeadingCallback = { newHeading in
      
      UserDefaults.standard.savedDirection = newHeading
      
      UIView.animate(withDuration: 0.5){
        let angle = self.computeNewAngle(with: CGFloat(newHeading))
        self.compassMiddleView.compass.transform = CGAffineTransform(rotationAngle: angle)
        let angleForStar = self.computeNewAngleForStar(with: CGFloat(newHeading))
        self.compassMiddleView.starLocation.transform = CGAffineTransform(rotationAngle: angleForStar )
      }
      
      self.makeDirectionString()
    }
    
    makeDirectionString()
    
    UIView.animate(withDuration: 0.5){
      let starHeading = UserDefaults.standard.savedDirection
      let second = self.starLocationBearing - CGFloat(starHeading).degreesToRadiansForDouble
      let third = CGFloat(self.orientationAdjustment().degreesToRadiansForDouble + second)
      self.compassMiddleView.starLocation.transform = CGAffineTransform(rotationAngle: third)
    }
    
  }
  
  private func makeDirectionString() {
    let direction: CGFloat = (self.starLocationBearing * (180 / .pi)).magnitude
    
    var directionDetail: String = "NW"
    
    switch direction {
      
    case 0...22:
      directionDetail = "N"
    case 23...67:
      directionDetail = "NE"
    case 68...112:
      directionDetail = "E"
    case 113...157:
      directionDetail = "SE"
    case 158...202:
      directionDetail = "S"
    case 203...247:
      directionDetail = "SW"
    case 248...292:
      directionDetail = "W"
    case 293...337:
      directionDetail = "NW"
    case 338...360:
      directionDetail = "N"
    default:
      directionDetail = ""
    }
    
    self.compassMiddleView.directionLabel.text = directionDetail + " " + String(format: "%.0f", direction) +  "°"
  }
  
  
  //Device 의 각도를 return
  private func orientationAdjustment() -> CGFloat {
    let isFaceDown: Bool = {
      switch UIDevice.current.orientation {
        //display 가 지면을 향하는 경우. 즉, 뒤집어져 있는 경우 -> isFaceDown = true
      case .faceDown: return true
      default: return false
      }
    }()
    
    let adjAngle: CGFloat = {
      guard let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene else {
          return 0
      }

      switch windowScene.interfaceOrientation {
        //기기는 가로 모드이며 기기는 똑바로 세워져 있고 홈 버튼은 왼쪽
      case .landscapeLeft: return 90
      case .landscapeRight: return -90
      case .portrait: return 0
        // 장치는 세로 모드이지만 장치가 수직이고 상단에 홈 버튼이 있는 거꾸로 뒤집혀 있슴.
        // 지면이 아래를 향하는 경우 180 그렇지 않으면 -180
      case .portraitUpsideDown: return isFaceDown ? 180 : -180
      default: return 0
      }
      
    }()
    return adjAngle
  }
  
  private func computeNewAngle(with newAngle: CGFloat) -> CGFloat {
    let heading: CGFloat = {
      //위에 선언된 변수로, 지구 중심에서부터 두 지점을 연결한 중심각의 radian 값을 리턴
      let originalHeading = self.northLocationBearing - newAngle.degreesToRadiansForDouble
      //지구 중심에서부터 두 지점을 연결한 중심각의 radian 값 과 기기의 방향 radian 값 간의 차이를 나타내는 듯.
      
      switch UIDevice.current.orientation {
        //display 가 지면을 향하는 경우. 즉, 뒤집어져 있는 경우
      case .faceDown: return -originalHeading
      default: return originalHeading
      }
    }()
    //Device 의 각도 리턴 값 + 여기서의 차이값 을 더해준다.
    return CGFloat((self.orientationAdjustment().degreesToRadiansForDouble) + heading)
  }
  
  private func computeNewAngleForStar(with newAngle: CGFloat) -> CGFloat {
    let heading: CGFloat = {
      let originalHeading = self.starLocationBearing - newAngle.degreesToRadiansForDouble
      switch UIDevice.current.orientation {
      case .faceDown: return -originalHeading
      default: return originalHeading
      }
    }()
    return CGFloat(self.orientationAdjustment().degreesToRadiansForDouble + heading)
  }

  
  private func settingAction() {
    compassTopView.mapButton.addTarget(self, action: #selector(navigateToMap), for: .touchUpInside)
  }
  
  @objc private func navigateToMap() {
    if NetworkMonitor.shared.isConnected {
      UserDefaults.standard.set(false, forKey: "fromList")
      let mapController = MapController()
      self.navigationController?.pushViewController(mapController, animated: true)
    } else {
      networkAlertDialog(title: NSLocalizedString("noInternet", comment: ""), message: "")
    }
  }
  
  @objc private func navigateToSettings() {
    let settingsController = SettingsController()
    self.navigationController?.pushViewController(settingsController, animated: true)
  }

}
