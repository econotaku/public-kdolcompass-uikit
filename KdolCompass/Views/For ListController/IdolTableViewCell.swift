//
//  IdolTableViewCell.swift
//  KdolCompass
//
//  Created by ECONOTAKU on 3/16/24.
//

import UIKit
import SafariServices

final class IdolTableViewCell: UITableViewCell {
  
  weak var viewController: UIViewController?
  var instaUrl = ""
  var nameContainer: IdolNameContaier!
  let instaButton: UIButton = {
    let button = UIButton(type: .system)
    button.translatesAutoresizingMaskIntoConstraints = false
    button.setImage(UIImage(named: "instaButton")?.withRenderingMode(.alwaysOriginal), for: .normal)
    return button
  }()
  
  override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
    super.init(style: style, reuseIdentifier: reuseIdentifier)
    cellStyle()
    layout()
    settingAction()
  }
  
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }

}

extension IdolTableViewCell {
  
  private func cellStyle() {
    nameContainer = IdolNameContaier()
    nameContainer.backgroundColor = .white
    nameContainer.translatesAutoresizingMaskIntoConstraints = false
  }
  
  private func layout() {
    
    contentView.addSubview(nameContainer)
    contentView.addSubview(instaButton)
    
    NSLayoutConstraint.activate([
      nameContainer.heightAnchor.constraint(equalToConstant: 50),
      nameContainer.widthAnchor.constraint(equalTo: contentView.widthAnchor, multiplier: 0.7),
      nameContainer.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 5),
      nameContainer.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -5),
      nameContainer.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20)
    ])
    
    NSLayoutConstraint.activate([
      instaButton.leadingAnchor.constraint(equalTo: nameContainer.trailingAnchor, constant: 30),
      instaButton.centerYAnchor.constraint(equalTo: nameContainer.centerYAnchor),
      instaButton.widthAnchor.constraint(equalToConstant: 30),
      instaButton.heightAnchor.constraint(equalToConstant: 30)
    
    ])
  }
  
  private func settingAction() {
    instaButton.addTarget(self, action: #selector(goToInsta), for: .touchUpInside)
  }
  
  @objc private func goToInsta() {
    guard let urlString = URL(string: instaUrl) else { return }
    let safariViewController = SFSafariViewController(url: urlString)
    viewController?.present(safariViewController, animated: true, completion: nil)
  }
  
}
