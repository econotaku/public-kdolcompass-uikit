//
//  CardView.swift
//  KdolCompass
//
//  Created by ECONOTAKU on 3/5/24.
//

import UIKit

final class SettingsIdolView: UIView {

  let shadowOfSetWidth : CGFloat = 0
  let shadowOfSetHeight : CGFloat = 5
  let shadowColour : UIColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
  let shadowOpacity : CGFloat = 0.5
  
  var companyNameLabel = UILabel()
  var idolNameLabel = UILabel()
  var addressLabel = UILabel()
  
  let mapButton: UIButton = {
    let button = UIButton(type: .system)
    return button
  }()
  
  let settingsIdolBtn: UIButton = {
    let button = UIButton(type: .system)
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
    let trailingBoundsWidth = -(bounds.width/4 + 20)
    viewStyle()
    layout(trailingValue: trailingBoundsWidth)
  }
}

extension SettingsIdolView {
  
  private func componentStyle() {
    
    companyNameLabel.translatesAutoresizingMaskIntoConstraints = false
    idolNameLabel.translatesAutoresizingMaskIntoConstraints = false
    addressLabel.translatesAutoresizingMaskIntoConstraints = false
    mapButton.translatesAutoresizingMaskIntoConstraints = false
    settingsIdolBtn.translatesAutoresizingMaskIntoConstraints = false
    
    let image = UIImage(systemName: "mappin.circle.fill")
    mapButton.setImage(image, for: .normal)
    mapButton.tintColor = UIColor(named: "DeepOrange")
    
    companyNameLabel.numberOfLines = 0
    companyNameLabel.textAlignment = .center
    companyNameLabel.textColor = UIColor(named: "DeepOrange")
    companyNameLabel.font = UIFont.systemFont(ofSize: 17)
    
    addressLabel.numberOfLines = 0
    addressLabel.textAlignment = .center
    addressLabel.textColor = UIColor(named: "SoftGray")
    addressLabel.font = UIFont.systemFont(ofSize: 15)
    
    idolNameLabel.textAlignment = .center
    idolNameLabel.textColor = UIColor(named: "DeepGray")
    idolNameLabel.font = UIFont.systemFont(ofSize: 17)
    
    settingsIdolBtn.layer.cornerRadius = 20
    settingsIdolBtn.layer.maskedCorners = CACornerMask(arrayLiteral: .layerMaxXMinYCorner, .layerMaxXMaxYCorner)
    settingsIdolBtn.setTitle("Setting \n Idol", for: .normal)
    settingsIdolBtn.titleLabel?.lineBreakMode = .byWordWrapping
    settingsIdolBtn.titleLabel?.textAlignment = .center
    settingsIdolBtn.setImage(UIImage(systemName: "chevron.right"), for: .normal)
    settingsIdolBtn.backgroundColor = UIColor(named: "DeepGray")
    settingsIdolBtn.tintColor = .white
    settingsIdolBtn.semanticContentAttribute = .forceRightToLeft
    
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
  
  private func layout(trailingValue: CGFloat) {
    
    addSubview(companyNameLabel)
    addSubview(mapButton)
    addSubview(addressLabel)
    addSubview(idolNameLabel)
    addSubview(settingsIdolBtn)
    
    NSLayoutConstraint.activate([
      companyNameLabel.topAnchor.constraint(equalTo: topAnchor),
      companyNameLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
      companyNameLabel.trailingAnchor.constraint(equalTo: mapButton.leadingAnchor, constant: -20),
      companyNameLabel.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 1/3)
    ])
    
    NSLayoutConstraint.activate([
      mapButton.topAnchor.constraint(equalTo: topAnchor),
      mapButton.leadingAnchor.constraint(equalTo: companyNameLabel.trailingAnchor, constant: 20),
      mapButton.trailingAnchor.constraint(equalTo: settingsIdolBtn.leadingAnchor, constant: -20),
      mapButton.widthAnchor.constraint(equalToConstant: 25),
      mapButton.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 1/3)
    ])
    
    NSLayoutConstraint.activate([
      addressLabel.topAnchor.constraint(equalTo: companyNameLabel.bottomAnchor),
      addressLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
      addressLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: trailingValue),
      addressLabel.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 1/3)
    ])

    NSLayoutConstraint.activate([
      idolNameLabel.topAnchor.constraint(equalTo: addressLabel.bottomAnchor),
      idolNameLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
      idolNameLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: trailingValue),
      idolNameLabel.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 1/3)
    ])
    
    NSLayoutConstraint.activate([
      settingsIdolBtn.trailingAnchor.constraint(equalTo: trailingAnchor),
      settingsIdolBtn.topAnchor.constraint(equalTo: topAnchor),
      settingsIdolBtn.bottomAnchor.constraint(equalTo: bottomAnchor),
      settingsIdolBtn.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 1/4)
    ])
  }

  
}
