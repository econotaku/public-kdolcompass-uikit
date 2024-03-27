//
//  CardViewForList.swift
//  KdolCompass
//
//  Created by ECONOTAKU on 3/5/24.
//

import UIKit


final class IdolNameContaier: UIView {
  
  var shadowOfSetWidth : CGFloat = 0
  var shadowOfSetHeight : CGFloat = 2
  var shadowColour : UIColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
  var shadowOpacity : CGFloat = 0.5
  
  let idolNameLabel = UILabel()
  
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
  
  private func componentStyle() {
    idolNameLabel.font = UIFont.systemFont(ofSize: 17)
    idolNameLabel.translatesAutoresizingMaskIntoConstraints = false
  }
  
  private func viewStyle() {
    layer.cornerRadius = layer.frame.height / 2
    layer.shadowColor = shadowColour.cgColor
    layer.shadowOffset = CGSize(width: shadowOfSetWidth, height: shadowOfSetHeight)
    let shadowPath = UIBezierPath(roundedRect: bounds, cornerRadius: layer.frame.height / 2)
    layer.shadowPath = shadowPath.cgPath
    layer.shadowOpacity = Float(shadowOpacity)
  }
  
  private func layout() {
    addSubview(idolNameLabel)
    
    NSLayoutConstraint.activate([
      idolNameLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
      idolNameLabel.centerYAnchor.constraint(equalTo: centerYAnchor)
    ])
  }

  override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
      super.touchesBegan(touches, with: event)
      
      UIView.animate(withDuration: 0.2) {
          self.backgroundColor = .darkGray
          self.idolNameLabel.textColor = .white
      }
  }
  
  override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
      super.touchesEnded(touches, with: event)
      
      UIView.animate(withDuration: 0.2) {
          self.backgroundColor = .white
          self.idolNameLabel.textColor = .black
      }
  }

}
