//
//  MapInfoController.swift
//  KdolCompass
//
//  Created by ECONOTAKU on 3/19/24.
//

import UIKit

class MapInfoController: UIViewController {
  
  // MARK: Properties
  let titleOfMapInfo = UILabel()
  let info_0 = UILabel()
  let info_1 = UILabel()
  let info_2 = UILabel()
  let info_3 = UILabel()
  let info_4 = UILabel()
  let uniqueness = UILabel()
  let uniq_0 = UILabel()
  let uniq_1 = UILabel()
  let uniq_2 = UILabel()
  
  
  // MARK: LifeCycles
  override func viewDidLoad() {
    super.viewDidLoad()
    style()
    layout()
  }
  
  
}

extension MapInfoController {
  
  private func style() {
    view.backgroundColor = .systemBackground
    
    titleOfMapInfo.text = "INFO"
    info_0.text = NSLocalizedString("info_0", comment: "")
    info_1.text = NSLocalizedString("info_1", comment: "")
    info_2.text = NSLocalizedString("info_2", comment: "")
    info_3.text = NSLocalizedString("info_3", comment: "")
    info_4.text = NSLocalizedString("info_4", comment: "")
    uniqueness.text = NSLocalizedString("uniqueness", comment: "")
    uniq_0.text = NSLocalizedString("uniq_0", comment: "")
    uniq_1.text = NSLocalizedString("uniq_1", comment: "")
    uniq_2.text = NSLocalizedString("uniq_2", comment: "")
    
    uniqueness.textColor = UIColor(named: "MiddleGray") ?? .darkGray
    uniq_0.textColor = UIColor(named: "MiddleGray") ?? .darkGray
    uniq_1.textColor = UIColor(named: "MiddleGray") ?? .darkGray
    uniq_2.textColor = UIColor(named: "MiddleGray") ?? .darkGray
    
    titleOfMapInfo.font = UIFont.systemFont(ofSize: 20, weight: .bold)
    info_0.font = UIFont.systemFont(ofSize: 17, weight: .semibold)
    info_1.font = UIFont.systemFont(ofSize: 17)
    info_2.font = UIFont.systemFont(ofSize: 17)
    info_3.font = UIFont.systemFont(ofSize: 17)
    info_4.font = UIFont.systemFont(ofSize: 17)
    uniqueness.font = UIFont.systemFont(ofSize: 18, weight: .bold)
    uniq_0.font = UIFont.systemFont(ofSize: 17)
    uniq_1.font = UIFont.systemFont(ofSize: 17)
    uniq_2.font = UIFont.systemFont(ofSize: 17)
    
    titleOfMapInfo.textAlignment = .center
    titleOfMapInfo.numberOfLines = 1
    titleOfMapInfo.translatesAutoresizingMaskIntoConstraints = false
    
    let labelList = [info_0, info_1, info_2, info_3, info_4, uniqueness, uniq_0, uniq_1, uniq_2]
    
    labelList.forEach { label in
      label.textAlignment = .justified
      label.numberOfLines = 0
      label.translatesAutoresizingMaskIntoConstraints = false
    }

  }
  
  private func layout() {
    
    view.addSubview(titleOfMapInfo)
    view.addSubview(info_0)
    view.addSubview(info_1)
    view.addSubview(info_2)
    view.addSubview(info_3)
    view.addSubview(info_4)
    view.addSubview(uniqueness)
    view.addSubview(uniq_0)
    view.addSubview(uniq_1)
    view.addSubview(uniq_2)
    
    NSLayoutConstraint.activate([
      titleOfMapInfo.topAnchor.constraint(equalTo: view.topAnchor, constant: 40),
      titleOfMapInfo.centerXAnchor.constraint(equalTo: view.centerXAnchor)
    ])
    
    layoutLabel(topLabel: titleOfMapInfo, label: info_0, topConstant: 30)
    layoutLabel(topLabel: info_0, label: info_1)
    layoutLabel(topLabel: info_1, label: info_2)
    layoutLabel(topLabel: info_2, label: info_3)
    layoutLabel(topLabel: info_3, label: info_4)
    layoutLabel(topLabel: info_4, label: uniqueness, topConstant: 20)
    layoutLabel(topLabel: uniqueness, label: uniq_0)
    layoutLabel(topLabel: uniq_0, label: uniq_1)
    layoutLabel(topLabel: uniq_1, label: uniq_2)

  }
  
  private func layoutLabel(topLabel: UILabel, label: UILabel, topConstant: CGFloat = 10) {
    NSLayoutConstraint.activate([
      label.topAnchor.constraint(equalTo: topLabel.bottomAnchor, constant: topConstant),
      label.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
      label.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20)
    ])
  }
  
}
