//
//  CompassMiddleView.swift
//  KdolCompass
//
//  Created by ECONOTAKU on 3/9/24.
//

import UIKit

final class CompassMiddleView: UIView {
  
  let shadowOfSetWidth : CGFloat = 0
  let shadowOfSetHeight : CGFloat = 5
  let shadowColour : UIColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
  let shadowOpacity : CGFloat = 0.5
  
  let compass = UIImageView(image: UIImage(named: "compass"))
  let starLocation = UIImageView(image: UIImage(named: "starLocation"))
  let directionLabel = UILabel()
  
  var cornerRadiusCustom: CGFloat = 0 {
    didSet{
      layer.cornerRadius = cornerRadiusCustom
    }
  }
  
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

extension CompassMiddleView {
  
  private func componentStyle() {
    compass.translatesAutoresizingMaskIntoConstraints = false
    starLocation.translatesAutoresizingMaskIntoConstraints = false
    directionLabel.translatesAutoresizingMaskIntoConstraints = false
    directionLabel.text = "E 69'"
    directionLabel.font = UIFont.systemFont(ofSize: 25)
  }
  
  private func viewStyle() {
    layer.backgroundColor = .init(red: 1, green: 1, blue: 1, alpha: 1)
    layer.cornerRadius = layer.frame.height / 16
    layer.shadowColor = shadowColour.cgColor
    layer.shadowOffset = CGSize(width: shadowOfSetWidth, height: shadowOfSetHeight)
    let shadowPath = UIBezierPath(roundedRect: bounds, cornerRadius: layer.cornerRadius)
    layer.shadowPath = shadowPath.cgPath
    layer.shadowOpacity = Float(shadowOpacity)
  }
  
  private func layout() {
   
    addSubview(compass)
    addSubview(starLocation)
    addSubview(directionLabel)
    
    NSLayoutConstraint.activate([
        compass.centerXAnchor.constraint(equalTo: centerXAnchor),
        compass.centerYAnchor.constraint(equalTo: centerYAnchor),
        compass.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 0.6),
        compass.widthAnchor.constraint(equalTo: compass.heightAnchor, multiplier: 1)
    ])
    
    NSLayoutConstraint.activate([
        starLocation.centerXAnchor.constraint(equalTo: centerXAnchor),
        starLocation.centerYAnchor.constraint(equalTo: centerYAnchor),
        starLocation.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 0.9),
        starLocation.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 0.78)
    ])
    
    NSLayoutConstraint.activate([
      directionLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10),
      directionLabel.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -10)
    ])
  }
  
}
