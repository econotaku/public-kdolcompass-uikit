//
//  SettingsController.swift
//  KdolCompass
//
//  Created by ECONOTAKU on 3/13/24.
//

import UIKit
import PhotosUI

final class SettingsController: UIViewController {
  
  // MARK: Properties
  let idolSettingView = SettingsIdolView()
  let imageSettingView = SettingImageView()
  let settingUnitView = SettingsUnitView()
  let removeBannerBtn: UIButton = {
    let button = UIButton(type: .system)
    button.layer.cornerRadius = 10
    button.setTitle(NSLocalizedString("removeAds", comment: ""), for: .normal)
    button.titleLabel?.lineBreakMode = .byWordWrapping
    button.titleLabel?.textAlignment = .center
    button.titleLabel?.font = UIFont.systemFont(ofSize: 18)
    button.setTitleColor(.white, for: .normal)
    button.backgroundColor = UIColor(named: "MiddleGray")
    return button
  }()
  
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
  }
  
  override func viewWillDisappear(_ animated: Bool) {
    super.viewWillDisappear(animated)
  }
  
}

extension SettingsController {
  
  private func fixedStyle() {
    view.backgroundColor = .systemBackground
    idolSettingView.translatesAutoresizingMaskIntoConstraints = false
    imageSettingView.translatesAutoresizingMaskIntoConstraints = false
    settingUnitView.translatesAutoresizingMaskIntoConstraints = false
    removeBannerBtn.translatesAutoresizingMaskIntoConstraints = false
  }
  
  
  private func mutableStyle() {
    
    //아이돌 이름
    if let idolName = UserDefaults.standard.object(forKey: "name") as? String {
      idolSettingView.idolNameLabel.text = idolName
    } else {
      idolSettingView.idolNameLabel.text = "idol name"
    }
    
    //소속사 주소
    if let address = UserDefaults.standard.object(forKey: "address") as? String {
      idolSettingView.addressLabel.text = address
    } else {
      idolSettingView.addressLabel.text = "Agency address"
    }
    
    //소속사 이름
    if let companyName = UserDefaults.standard.object(forKey: "company") as? String {
      idolSettingView.companyNameLabel.text = companyName
    } else {
      idolSettingView.companyNameLabel.text = "Agency name"
    }
    
    //프로필 사진
    let fileURL = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)[0].appendingPathComponent("savedProfileImage.jpg")
    if let image = UIImage(contentsOfFile: fileURL.path) {
        DispatchQueue.main.async {
          self.imageSettingView.profileImage.image = image
        }
    } else {
        DispatchQueue.main.async {
          self.imageSettingView.profileImage.image = UIImage(named: "defaultProfile")
        }
    }
    
    //거리 단위
    let boolkm = UserDefaults.standard.bool(forKey: "km")
    if boolkm {
      settingUnitView.segmentedControl.selectedSegmentIndex = 0
    } else {
      settingUnitView.segmentedControl.selectedSegmentIndex = 1
    }
    
  }
  
  private func layout() {
    
    let descriptionOfCompassBtn =
    UIBarButtonItem(image: UIImage(systemName: "info.circle"), style: .plain, target: self, action: #selector(self.showDescriptionOfCompass))
    
    self.navigationItem.rightBarButtonItem = descriptionOfCompassBtn
    
    view.addSubview(idolSettingView)
    view.addSubview(imageSettingView)
    view.addSubview(settingUnitView)
    view.addSubview(removeBannerBtn)
    
    NSLayoutConstraint.activate([
      idolSettingView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 15),
      idolSettingView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
      idolSettingView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
      idolSettingView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.25)
    ])
    
    NSLayoutConstraint.activate([
      imageSettingView.topAnchor.constraint(equalTo: idolSettingView.bottomAnchor, constant: 20),
      imageSettingView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
      imageSettingView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
      imageSettingView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.25)
    ])
    
    NSLayoutConstraint.activate([
      settingUnitView.topAnchor.constraint(equalTo: imageSettingView.bottomAnchor, constant: 20),
      settingUnitView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
      settingUnitView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
      settingUnitView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.08)
    ])
    
    NSLayoutConstraint.activate([
      removeBannerBtn.topAnchor.constraint(equalTo: settingUnitView.bottomAnchor, constant: 20),
      removeBannerBtn.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
      removeBannerBtn.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
      removeBannerBtn.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.08)
    ])
    
  }
  
  private func settingAction() {
    idolSettingView.mapButton.addTarget(self, action: #selector(navigateToMap), for: .touchUpInside)
    idolSettingView.settingsIdolBtn.addTarget(self, action: #selector(navigateToList), for: .touchUpInside)
    removeBannerBtn.addTarget(self, action: #selector(removeBanner), for: .touchUpInside)
    imageSettingView.settingsImageBtn.addTarget(self, action: #selector(openAlbum), for: .touchUpInside)
    settingUnitView.segmentedControl.addTarget(self, action: #selector(segmentChaged(_:)), for: .valueChanged)
  }
  
  
  @objc private func navigateToList() {
    let listController = ListController()
    self.navigationController?.pushViewController(listController, animated: true)
  }
  
  
  @objc private func navigateToMap() {
    let mapController = MapController()
    self.navigationController?.pushViewController(mapController, animated: true)
  }
  
  
  @objc private func removeBanner() {
    
  }
  
  
  @objc private func showDescriptionOfCompass() {
    let compassInfoController = CompassInfoController()
    compassInfoController.modalPresentationStyle = .popover
    self.present(compassInfoController, animated: true, completion: nil)
  }
  
  @objc private func segmentChaged(_ sender: UISegmentedControl) {
    switch sender.selectedSegmentIndex {
    case 0:
      UserDefaults.standard.setValue(true, forKey: "km")
    case 1:
      UserDefaults.standard.setValue(false, forKey: "km")
    default:
      break
    }
  }
  
}


extension SettingsController: PHPickerViewControllerDelegate {
  
  @objc private func openAlbum() {
    var configuration = PHPickerConfiguration()
    configuration.selectionLimit = 1
    configuration.filter = .images // 이미지만 선택
    
    let picker = PHPickerViewController(configuration: configuration)
    picker.delegate = self
    present(picker, animated: true, completion: nil)
  }
  
  
  func picker(_ picker: PHPickerViewController, didFinishPicking results: [PHPickerResult]) {
    picker.dismiss(animated: true, completion: nil)
    
    let itemProvider = results.first?.itemProvider
    if let itemProvider = itemProvider, itemProvider.canLoadObject(ofClass: UIImage.self) {
      itemProvider.loadObject(ofClass: UIImage.self) { [weak self] (image, error) in
        DispatchQueue.main.async {
          if let image = image as? UIImage {
            // 이미지 처리
            self?.saveImage(image: image)
          }
        }
      }
    }
  }
  
  func saveImage(image: UIImage) {
    if let imageData = image.jpegData(compressionQuality: 0.2) ?? image.pngData() {

      let fileName = "savedProfileImage.jpg"
      let filePath = self.getDocumentsDirectory().appendingPathComponent(fileName)
      
      do {
        try imageData.write(to: filePath)
        imageSettingView.profileImage.image = image
      } catch {
        print("Error saving image: \(error)")
      }
    }
  }
  
  func getDocumentsDirectory() -> URL {
    let paths = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
    return paths[0]
  }
  
}

