//
//  CompassInfoController.swift
//  KdolCompass
//
//  Created by ECONOTAKU on 3/19/24.
//

import UIKit

final class CompassInfoController: UIViewController {
  
  // MARK: Properties
  let titleOfCompassInfo = UILabel()
  let description_01 = UILabel()
  let description_02 = UILabel()
  let description_03 = UILabel()
  let description_04 = UILabel()
  let descriptionImage = UIImageView(image: UIImage(named: "descriptionCompass"))
  
  // MARK: LifeCycles
  override func viewDidLoad() {
    super.viewDidLoad()
    style()
    layout()
  }
  
  
}

extension CompassInfoController {
  
  private func style() {
    view.backgroundColor = .systemBackground
    titleOfCompassInfo.text = "INFO"
    description_01.text = NSLocalizedString("description_01", comment: "")
    description_02.text = NSLocalizedString("description_02", comment: "")
    description_03.text = NSLocalizedString("description_03", comment: "")
    description_04.text = NSLocalizedString("description_04", comment: "")
    
    titleOfCompassInfo.font = UIFont.systemFont(ofSize: 20, weight: .bold)
    description_01.font = UIFont.systemFont(ofSize: 17, weight: .semibold)
    description_02.font = UIFont.systemFont(ofSize: 17)
    description_03.font = UIFont.systemFont(ofSize: 17)
    description_04.font = UIFont.systemFont(ofSize: 17)
    
    titleOfCompassInfo.textAlignment = .center
    titleOfCompassInfo.numberOfLines = 1
    titleOfCompassInfo.translatesAutoresizingMaskIntoConstraints = false
    
    let labelList = [description_01, description_02, description_03, description_04]
    
    labelList.forEach { label in
      label.textAlignment = .justified
      label.numberOfLines = 0
      label.translatesAutoresizingMaskIntoConstraints = false
    }
    
    descriptionImage.translatesAutoresizingMaskIntoConstraints = false
  }
  
  private func layout() {
    
    view.addSubview(titleOfCompassInfo)
    view.addSubview(description_01)
    view.addSubview(description_02)
    view.addSubview(description_03)
    view.addSubview(description_04)
    view.addSubview(descriptionImage)
    
    NSLayoutConstraint.activate([
      titleOfCompassInfo.topAnchor.constraint(equalTo: view.topAnchor, constant: 40),
      titleOfCompassInfo.centerXAnchor.constraint(equalTo: view.centerXAnchor)
    ])
    
    layoutLabel(topLabel: titleOfCompassInfo, label: description_01, topConstant: 30)
    
    NSLayoutConstraint.activate([
      descriptionImage.topAnchor.constraint(equalTo: description_01.bottomAnchor, constant: 30),
      descriptionImage.centerXAnchor.constraint(equalTo: view.centerXAnchor),
      descriptionImage.widthAnchor.constraint(equalToConstant: 300),
      descriptionImage.heightAnchor.constraint(equalToConstant: 136)
    ])
    
    NSLayoutConstraint.activate([
      description_02.topAnchor.constraint(equalTo: descriptionImage.bottomAnchor, constant: 30),
      description_02.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
      description_02.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20)
    ])
    
    layoutLabel(topLabel: description_02, label: description_03)
    layoutLabel(topLabel: description_03, label: description_04)
    
  }
  
  private func layoutLabel(topLabel: UILabel, label: UILabel, topConstant: CGFloat = 10) {
    NSLayoutConstraint.activate([
      label.topAnchor.constraint(equalTo: topLabel.bottomAnchor, constant: topConstant),
      label.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
      label.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20)
    ])
  }
  
}
