//
//  CardViewForMainBottom.swift
//  KdolCompass
//
//  Created by ECONOTAKU on 3/5/24.
//

import UIKit

final class CompassBottomView: UIView {
  var shadowOfSetWidth : CGFloat = 0
  var shadowOfSetHeight : CGFloat = 5
  var shadowColour : UIColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
  var shadowOpacity : CGFloat = 0.5
  
  let earth = UIImageView(image: UIImage(named: "earth"))
  let distanceLabel = UILabel()
  let circleProgressView = CircularProgressView(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
  
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


extension CompassBottomView {
  
  private func componentStyle() {
    earth.translatesAutoresizingMaskIntoConstraints = false
    distanceLabel.translatesAutoresizingMaskIntoConstraints = false
    circleProgressView.translatesAutoresizingMaskIntoConstraints = false
    
    distanceLabel.text = "20000.9Km"
    distanceLabel.font = UIFont.systemFont(ofSize: 25)
    
    circleProgressView.trackClr = UIColor(named: "SoftOrange")?.withAlphaComponent(0.5) ?? .black
    circleProgressView.progressClr = UIColor(named: "DeepOrange") ?? .darkGray
    circleProgressView.setProgressWithAnimation(duration: 1.0, value: 0.75)
  }
  
  private func viewStyle() {
    layer.backgroundColor = .init(red: 1, green: 1, blue: 1, alpha: 1)
    layer.cornerRadius = layer.frame.height / 2
    layer.maskedCorners = [ .layerMinXMaxYCorner, .layerMaxXMaxYCorner]
    layer.shadowColor = shadowColour.cgColor
    layer.shadowOffset = CGSize(width: shadowOfSetWidth, height: shadowOfSetHeight)
    
    let shadowPath = UIBezierPath(roundedRect: bounds, byRoundingCorners: [.bottomLeft, .bottomRight] , cornerRadii: CGSize(width: layer.frame.height / 2, height: layer.frame.height / 2))
    
    layer.shadowPath = shadowPath.cgPath
    layer.shadowOpacity = Float(shadowOpacity)
  }
  
  private func layout() {
    
    addSubview(earth)
    addSubview(distanceLabel)
    addSubview(circleProgressView)
    
    NSLayoutConstraint.activate([
      earth.heightAnchor.constraint(equalToConstant: 90),
      earth.centerYAnchor.constraint(equalTo: centerYAnchor),
      earth.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
      earth.widthAnchor.constraint(equalTo: earth.heightAnchor, multiplier: 1)
    ])
    
    NSLayoutConstraint.activate([
      distanceLabel.topAnchor.constraint(equalTo: earth.topAnchor),
      distanceLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10)
    ])
    
    NSLayoutConstraint.activate([
      circleProgressView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15),
      circleProgressView.heightAnchor.constraint(equalToConstant: 100),
      circleProgressView.widthAnchor.constraint(equalToConstant: 100),
      circleProgressView.centerYAnchor.constraint(equalTo: centerYAnchor)
    ])
    
    bringSubviewToFront(earth)
    
  }
}



