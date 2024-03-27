//
//  SettingImageView.swift
//  KdolCompass
//
//  Created by ECONOTAKU on 3/13/24.
//

import UIKit

final class SettingImageView: UIView {
  
  let shadowOfSetWidth : CGFloat = 0
  let shadowOfSetHeight : CGFloat = 5
  let shadowColour : UIColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
  let shadowOpacity : CGFloat = 0.5
  
  var profileImageLeadingAnchor: CGFloat = 0
  let profileImage = ProfileImageView()
  let settingsImageBtn: UIButton = {
    let button = UIButton(type: .system)
    button.layer.cornerRadius = 20
    button.layer.maskedCorners = CACornerMask(arrayLiteral: .layerMaxXMinYCorner, .layerMaxXMaxYCorner)
    button.setTitle("Setting \n Image", for: .normal)
    button.titleLabel?.lineBreakMode = .byWordWrapping
    button.titleLabel?.textAlignment = .center
    button.setImage(UIImage(systemName: "chevron.right"), for: .normal)
    button.backgroundColor = UIColor(named: "DeepGray")
    button.tintColor = .white
    button.semanticContentAttribute = .forceRightToLeft
    return button
  }()
  
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

extension SettingImageView {
  
  private func componentStyle() {
    profileImage.translatesAutoresizingMaskIntoConstraints = false
    settingsImageBtn.translatesAutoresizingMaskIntoConstraints = false
    profileImage.image = UIImage(named: "defaultProfile")
  }
  
  private func viewStyle() {
    layer.backgroundColor = .init(red: 1, green: 1, blue: 1, alpha: 1)
    layer.cornerRadius = 20
    layer.shadowColor = shadowColour.cgColor
    layer.shadowOffset = CGSize(width: shadowOfSetWidth, height: shadowOfSetHeight)
    let shadowPath = UIBezierPath(roundedRect: bounds, cornerRadius: layer.cornerRadius)
    layer.shadowPath = shadowPath.cgPath
    layer.shadowOpacity = Float(shadowOpacity)
  }
  
  private func layout() {

    addSubview(profileImage)
    addSubview(settingsImageBtn)
    
    NSLayoutConstraint.activate([
      settingsImageBtn.trailingAnchor.constraint(equalTo: trailingAnchor),
      settingsImageBtn.topAnchor.constraint(equalTo: topAnchor),
      settingsImageBtn.bottomAnchor.constraint(equalTo: bottomAnchor),
      settingsImageBtn.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 1/4)
    ])
    
    NSLayoutConstraint.activate([
      profileImage.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 2/5),
      profileImage.heightAnchor.constraint(equalTo: profileImage.widthAnchor),
      profileImage.centerYAnchor.constraint(equalTo: centerYAnchor),
      profileImage.centerXAnchor.constraint(equalTo: centerXAnchor, constant: -bounds.width / 8)
    ])
    
  }
  
}
