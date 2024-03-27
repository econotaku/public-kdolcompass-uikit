//
//  UnitSelectTitleView.swift
//  KdolCompass
//
//  Created by ECONOTAKU on 3/14/24.
//

import UIKit

final class UnitSelectTitleView: UIView {
  
  let titleLabel = UILabel()
  
  override init(frame: CGRect) {
    super.init(frame: frame)
    style()
  }
  
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  override func layoutSubviews() {
    layout()
  }
  
  private func style() {
    superview?.clipsToBounds = true
    layer.cornerRadius = 10
    layer.maskedCorners = CACornerMask(arrayLiteral: .layerMinXMaxYCorner, .layerMinXMinYCorner)
    backgroundColor = UIColor(named: "DeepGray")
    titleLabel.text = "Unit"
    titleLabel.textColor = .white
    titleLabel.font = UIFont.systemFont(ofSize: 20, weight: .bold)
    titleLabel.translatesAutoresizingMaskIntoConstraints = false
  }
  
  private func layout() {
    
    addSubview(titleLabel)
    
    NSLayoutConstraint.activate([
      titleLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
      titleLabel.centerYAnchor.constraint(equalTo: centerYAnchor)
    ])
  }
  
}
