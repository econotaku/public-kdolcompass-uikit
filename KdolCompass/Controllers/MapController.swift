//
//  MapController.swift
//  KdolCompass
//
//  Created by ECONOTAKU on 3/14/24.
//

import UIKit
import MapKit
import CoreLocation

class MapController: UIViewController, MKMapViewDelegate, CLLocationManagerDelegate {
  
  // MARK: Properties
  private var mapView: MKMapView!
  private var locationManager: CLLocationManager = CLLocationManager()
  
  // MARK: LifeCycles
  override func viewDidLoad() {
    super.viewDidLoad()
    style()
    layout()
  }
  
}


extension MapController {
  
  private func style() {
    mapView = MKMapView(frame: self.view.bounds)
    mapView.mapType = .standard
    mapView.showsCompass = true
    mapView.showsScale = true
    mapView.delegate = self
    locationManager.delegate = self
    locationManager.desiredAccuracy = kCLLocationAccuracyBest
    locationManager.requestWhenInUseAuthorization()
    
    let descriptionOfMapBtn =
    UIBarButtonItem(image: UIImage(systemName: "info.circle"), style: .plain, target: self, action: #selector(self.showDescriptionOfMap))
    
    self.navigationItem.rightBarButtonItem = descriptionOfMapBtn
    
    
    //모든 소속사를 표시할 지, 설정한 소속사를 표시할 지 분기.
    let fromList = UserDefaults.standard.object(forKey: "fromList") as? Bool
    
    if fromList! {
      Constants.sectionArray.forEach { star in
        allLocation(star: star)
      }
    } else {
      let savedLocation = UserDefaults.standard.savedStarLocation
      let title = UserDefaults.standard.string(forKey: "company")
      setLocation(lat: savedLocation.coordinate.latitude, lon: savedLocation.coordinate.longitude, title: title ?? "")
    }
    
  }
  
  private func layout() {
    view.addSubview(mapView)
  }
  
  @objc private func showDescriptionOfMap() {
    let mapInfoController = MapInfoController()
    mapInfoController.modalPresentationStyle = .popover
    self.present(mapInfoController, animated: true, completion: nil)
  }
  
  
  private func allLocation(star: StarLocation) {
    
    let location = CLLocationCoordinate2DMake(star.latitude, star.longitude)
    let spanValue = MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
    let region = MKCoordinateRegion(center: location, span: spanValue)
    let annotation = MKPointAnnotation()
    annotation.coordinate = location
    
    if star.company == "Earth" {
      annotation.title = "Seoul"
    } else {
      annotation.title = star.company
    }
    
    mapView.setRegion(region, animated: true)
    mapView.addAnnotation(annotation)
  }
  
  private func setLocation(lat: CLLocationDegrees, lon: CLLocationDegrees, title: String) {
    let location = CLLocationCoordinate2DMake(lat, lon)
    let spanValue = MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1)
    let region = MKCoordinateRegion(center: location, span: spanValue)
    let annotation = MKPointAnnotation()
    
    annotation.coordinate = location
    
    if title == "Earth" {
      annotation.title = "Seoul"
    } else {
      annotation.title = title
    }
    
    mapView.setRegion(region, animated: true)
    mapView.addAnnotation(annotation)
  }
  
  //ANNOTATION 을 터치했을때의 작업
  func mapView(_ mapView: MKMapView, didSelect view: MKAnnotationView) {
    
    if let fromList = UserDefaults.standard.object(forKey: "fromList") as? Bool {
      if fromList {
        var star = view.annotation?.title
        if star == "Seoul" {
          star = "Earth"
        }
        let insertCompany = Constants.sectionArray.filter { $0.company == star}
        makeAlertDialog(title: NSLocalizedString("enterName", comment: ""), message: "",  star: insertCompany[0])
      }
    }
  }
  
  private func makeAlertDialog(title: String, message: String, star: StarLocation){
    
    let alert = UIAlertController(title: title, message: message , preferredStyle: .alert)
    
    alert.addTextField { (textFiled) in
      textFiled.placeholder = "Name"
    }
    
    let cancelBtn = UIAlertAction(title: "CANCEL", style: .destructive) { (action) in
      alert.dismiss(animated: true, completion: nil)
    }
    
    let okBtn = UIAlertAction(title: "SAVE", style: .default) { _ in
      
      if let name = alert.textFields?.first?.text {
        
        if name != "" {
          let locationForSetting = CLLocation(latitude: star.latitude, longitude: star.longitude)
          UserDefaults.standard.savedStarLocation = locationForSetting
          
          if star.company == "Earth" {
            UserDefaults.standard.set("Seoul",forKey: "company")
          } else {
            UserDefaults.standard.set(star.company,forKey: "company")
          }
          
          UserDefaults.standard.set(name, forKey: "name")
          UserDefaults.standard.set(star.address, forKey: "address")
          
          guard let viewControllerStack = self.navigationController?.viewControllers else { return }
          for viewController in viewControllerStack {
            if let settingView = viewController as? SettingsController {
              self.navigationController?.popToViewController(settingView, animated: true)
            }
          }
        }
      }
    }
    alert.addAction(cancelBtn)
    alert.addAction(okBtn)
    self.present(alert, animated: true, completion: nil)
  }
  
  
}
