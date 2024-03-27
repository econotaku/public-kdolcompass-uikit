//
//  SettingsUnit.swift
//  KdolCompass
//
//  Created by ECONOTAKU on 3/5/24.
//

import UIKit

final class SettingsUnitView: UIView {
  
  let shadowOfSetWidth : CGFloat = 0
  let shadowOfSetHeight : CGFloat = 5
  let shadowColour : UIColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
  let shadowOpacity : CGFloat = 0.5
  
  let unitSelectTitleView = UnitSelectTitleView()
  var segmentedControl = UISegmentedControl()
  
  override init(frame: CGRect) {
    super.init(frame: frame)
    componentStyle()
  }
  
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  override func layoutSubviews() {
    viewStyle()
    layout()
  }
  
}


extension SettingsUnitView {
  
  private func componentStyle() {
    unitSelectTitleView.translatesAutoresizingMaskIntoConstraints = false
    let items = ["Km", "Mile"]
    segmentedControl = UISegmentedControl(items: items)
    segmentedControl.selectedSegmentTintColor = .yellow
    segmentedControl.translatesAutoresizingMaskIntoConstraints = false
    segmentedControl.selectedSegmentTintColor = UIColor(named: "DeepYellow")
    segmentedControl.selectedSegmentIndex = 0
  }
  
  private func viewStyle() {
    layer.backgroundColor = .init(red: 1, green: 1, blue: 1, alpha: 1)
    layer.cornerRadius = 10
    layer.shadowColor = shadowColour.cgColor
    layer.shadowOffset = CGSize(width: shadowOfSetWidth, height: shadowOfSetHeight)
    let shadowPath = UIBezierPath(roundedRect: bounds, cornerRadius: layer.cornerRadius)
    layer.shadowPath = shadowPath.cgPath
    layer.shadowOpacity = Float(shadowOpacity)
  }
  
  
  private func layout() {
    addSubview(unitSelectTitleView)
    addSubview(segmentedControl)
    
    NSLayoutConstraint.activate([
      unitSelectTitleView.topAnchor.constraint(equalTo: topAnchor),
      unitSelectTitleView.leadingAnchor.constraint(equalTo: leadingAnchor),
      unitSelectTitleView.bottomAnchor.constraint(equalTo: bottomAnchor),
      unitSelectTitleView.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 0.3)
    ])
    
    NSLayoutConstraint.activate([
      segmentedControl.topAnchor.constraint(equalTo: topAnchor, constant: 10),
      segmentedControl.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10),
      segmentedControl.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -10),
      segmentedControl.leadingAnchor.constraint(equalTo: unitSelectTitleView.trailingAnchor, constant: 10)
    ])
    
  }
  
}
