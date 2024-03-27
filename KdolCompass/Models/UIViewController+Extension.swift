//
//  Extension+UIViewController.swift
//  KdolCompass
//
//  Created by ECONOTAKU on 3/5/24.
//

import UIKit


extension UIViewController {
  
  func networkAlertDialog(title: String, message: String){
    let alert = UIAlertController(title: title, message: message , preferredStyle: .alert)
    let okBtn = UIAlertAction(title: "OK", style: .default) { (action) in
      alert.dismiss(animated: true, completion: nil)
    }
    alert.addAction(okBtn)
    self.present(alert, animated: true, completion: nil)
  }
  
}





