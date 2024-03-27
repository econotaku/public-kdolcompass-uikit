//
//  ProfileImageView.swift
//  KdolCompass
//
//  Created by ECONOTAKU on 3/5/24.
//

import UIKit

final class ProfileImageView: UIImageView {
  override func layoutSubviews() {
    super.layoutSubviews()
    self.contentMode = .scaleAspectFill
    self.layer.cornerRadius = self.frame.size.height / 2
    self.clipsToBounds = true
  }
}
