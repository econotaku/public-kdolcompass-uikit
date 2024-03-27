//
//  CircularProgressView.swift
//  KdolCompass
//
//  Created by ECONOTAKU on 3/5/24.
//


import UIKit

final class CircularProgressView: UIView {
  
  var progressLayer = CAShapeLayer()
  var trackLayer = CAShapeLayer()
  var bound: CGRect = UIScreen.main.bounds
  var isAnimationPerformed = false
  
  override init(frame: CGRect) {
      super.init(frame: frame)
      makeCircularPath()
  }
  
  required init?(coder aDecoder: NSCoder) {
    super.init(coder: aDecoder)
    makeCircularPath()
  }

  var progressClr = UIColor.white {
    
    didSet {
      progressLayer.strokeColor = progressClr.cgColor
    }
  }
  
  var trackClr = UIColor.white {
    
    didSet {
      trackLayer.strokeColor = trackClr.cgColor
    }
  }
  
  var distanceValue: Float = 0 {
    didSet(value) {
      distanceValue = (value / 1000) / 40075
    }
  }
  
  func makeCircularPath() {
    self.backgroundColor = UIColor.clear
    self.layer.cornerRadius = self.frame.size.width/2
    let circlePath = UIBezierPath(arcCenter: CGPoint(x: frame.size.width/2, y: frame.size.height/2), radius: (frame.size.width - 1.5)/2, startAngle: CGFloat(-0.5 * .pi), endAngle: CGFloat(1.5 * .pi), clockwise: true)
    trackLayer.path = circlePath.cgPath
    trackLayer.fillColor = UIColor.clear.cgColor
    trackLayer.strokeColor = trackClr.cgColor

    if bound.height <= 700 {
      trackLayer.lineWidth = 4.0
    } else if 720 <= bound.height && bound.height <= 800 {
      trackLayer.lineWidth = 5.0
    } else if 801 <= bound.height && bound.height <= 829{
      trackLayer.lineWidth = 6.0
    } else if 830 <= bound.height && bound.height <= 860{
      trackLayer.lineWidth = 8.0
    } else {
      trackLayer.lineWidth = 20.0
    }
    
    trackLayer.strokeEnd = 1.0
    layer.addSublayer(trackLayer)
    progressLayer.path = circlePath.cgPath
    progressLayer.fillColor = UIColor.clear.cgColor
    progressLayer.strokeColor = progressClr.cgColor
    
    if bound.height <= 700 {
      progressLayer.lineWidth = 4.0
    } else if 720 <= bound.height && bound.height <= 800 {
      progressLayer.lineWidth = 5.0
    } else if 801 <= bound.height && bound.height <= 829{
      progressLayer.lineWidth = 6.0
    } else if 830 <= bound.height && bound.height <= 860{
      progressLayer.lineWidth = 8.0
    } else {
      progressLayer.lineWidth = 20.0
    }

    progressLayer.strokeEnd = 0.0
    layer.addSublayer(progressLayer)
  }
  
  func setProgressWithAnimationForStart(duration: TimeInterval, value: Float) {
    let animation = CABasicAnimation(keyPath: "strokeEnd")
    animation.duration = duration
    animation.fromValue = value
    animation.toValue = value
    animation.timingFunction = CAMediaTimingFunction(name: CAMediaTimingFunctionName.linear)
    progressLayer.strokeEnd = CGFloat(value)
    progressLayer.add(animation, forKey: "animateprogress")
  }
  
  func setProgressWithAnimation(duration: TimeInterval, value: Float) {
    let animation = CABasicAnimation(keyPath: "strokeEnd")
    animation.duration = duration
    animation.fromValue = 0
    animation.toValue = value
    animation.timingFunction = CAMediaTimingFunction(name: CAMediaTimingFunctionName.linear)
    progressLayer.strokeEnd = CGFloat(value)
    progressLayer.add(animation, forKey: "animateprogress")
  }
  
}

