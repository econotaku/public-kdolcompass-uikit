//
//  CardViewForMainTop.swift
//  KdolCompass
//
//  Created by ECONOTAKU on 3/5/24.
//

import UIKit

final class CompassTopView: UIView {
  
  var shadowOfSetWidth : CGFloat = 0
  var shadowOfSetHeight : CGFloat = 5
  var shadowColour : UIColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
  var shadowOpacity : CGFloat = 0.5
  
  var companyNameLabel = UILabel()
  var idolNameLabel = UILabel()
  let mapButton: UIButton = {
    let button = UIButton(type: .system)
    return button
  }()
  let profileImage = ProfileImageView()
  
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

extension CompassTopView {
  
  private func componentStyle() {
    companyNameLabel.translatesAutoresizingMaskIntoConstraints = false
    idolNameLabel.translatesAutoresizingMaskIntoConstraints = false
    mapButton.translatesAutoresizingMaskIntoConstraints = false
    profileImage.translatesAutoresizingMaskIntoConstraints = false
    
    let image = UIImage(systemName: "mappin.circle.fill")
    mapButton.setImage(image, for: .normal)
    mapButton.tintColor = UIColor(named: "DeepOrange")
    
    profileImage.image = UIImage(named: "defaultProfile")
     
    companyNameLabel.numberOfLines = 0
    companyNameLabel.textAlignment = .center
    companyNameLabel.textColor = UIColor(named: "DeepOrange")
    
  }
  
  private func viewStyle() {
    layer.backgroundColor = .init(red: 1, green: 1, blue: 1, alpha: 1)
    layer.cornerRadius = layer.frame.height / 2
    layer.maskedCorners = [ .layerMinXMinYCorner, .layerMaxXMinYCorner]
    layer.shadowColor = shadowColour.cgColor
    layer.shadowOffset = CGSize(width: shadowOfSetWidth, height: shadowOfSetHeight)
    let shadowPath = UIBezierPath(roundedRect: bounds, byRoundingCorners: [.topLeft, .topRight] , cornerRadii: CGSize(width: layer.frame.height / 2, height: layer.frame.height / 2))
    layer.shadowPath = shadowPath.cgPath
    layer.shadowOpacity = Float(shadowOpacity)
  }
  
  private func layout() {
    
    addSubview(companyNameLabel)
    addSubview(mapButton)
    addSubview(idolNameLabel)
    addSubview(profileImage)
    
    NSLayoutConstraint.activate([
      profileImage.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10),
      profileImage.centerYAnchor.constraint(equalTo: centerYAnchor),
      profileImage.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 0.3),
      profileImage.heightAnchor.constraint(equalTo: profileImage.widthAnchor)
    ])
    
    NSLayoutConstraint.activate([
      mapButton.trailingAnchor.constraint(equalTo: profileImage.leadingAnchor),
      mapButton.topAnchor.constraint(equalTo: topAnchor, constant: 10),
      mapButton.widthAnchor.constraint(equalTo: profileImage.widthAnchor, multiplier: 1/4),
      mapButton.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 1/2)
    ])
    
    NSLayoutConstraint.activate([
      companyNameLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
      companyNameLabel.topAnchor.constraint(equalTo: topAnchor, constant: 10),
      companyNameLabel.trailingAnchor.constraint(equalTo: mapButton.leadingAnchor, constant: -10),
      companyNameLabel.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 1/2)
    ])
    
    NSLayoutConstraint.activate([
      idolNameLabel.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -10),
      idolNameLabel.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 1/3),
      idolNameLabel.centerXAnchor.constraint(equalTo: centerXAnchor, constant: -bounds.width / 6)
    ])
  
  }
  
}


