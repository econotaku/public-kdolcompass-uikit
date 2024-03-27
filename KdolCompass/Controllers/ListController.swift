//
//  ListController.swift
//  KdolCompass
//
//  Created by ECONOTAKU on 3/13/24.
//

import UIKit
import CoreLocation

final class ListController: UIViewController {
  
  // MARK: Properties
  var tableView: UITableView!
  
  // MARK: LifeCycles
  
  override func viewDidLoad() {
    super.viewDidLoad()
    style()
    layout()
  }
  
  override func viewWillAppear(_ animated: Bool) {
    super.viewWillAppear(animated)
  }
  
  override func viewWillDisappear(_ animated: Bool) {
    super.viewWillDisappear(animated)
  }
}

extension ListController {
  
  private func style() {

    view.backgroundColor = .systemBackground
    tableView = UITableView(frame: .zero, style: .plain)
    tableView.translatesAutoresizingMaskIntoConstraints = false
    tableView.delegate = self
    tableView.dataSource = self
    tableView.register(IdolTableViewCell.self, forCellReuseIdentifier: "IdolTableViewCell")
    tableView.separatorStyle = .none
    
  }
  
  private func layout() {
    
    let navigateToMapBtn =
    UIBarButtonItem(image: UIImage(systemName: "map"), style: .plain, target: self, action: #selector(self.navigateToMap))
    
    self.navigationItem.rightBarButtonItem = navigateToMapBtn
    
    view.addSubview(tableView)
    
    NSLayoutConstraint.activate([
      tableView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
      tableView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
      tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
      tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10)
    ])
  }
  
  @objc private func navigateToMap() {
    UserDefaults.standard.set(true, forKey: "fromList")
    let mapController = MapController()
    self.navigationController?.pushViewController(mapController, animated: true)
  }
  
}


// MARK: - TABLE VIEW DATA SOURCE
extension ListController: UITableViewDataSource {
  
  // Section 의 수
  func numberOfSections(in tableView: UITableView) -> Int {
    return Constants.companyArray.count
  }
  
  // 각 Section 의 title
  func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
    return Constants.companyArray[section][0].company
  }
  
  //Section 별 item 의 수
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return Constants.companyArray[section].count
  }
  
  //tableView 특정위치에 삽입할 cell에 대해 dataSource 에 요청
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "IdolTableViewCell", for: indexPath) as! IdolTableViewCell
    cell.selectionStyle = .none
    cell.viewController = self
    cell.nameContainer.idolNameLabel.text = Constants.companyArray[indexPath.section][indexPath.row].name
    cell.instaUrl = Constants.companyArray[indexPath.section][indexPath.row].instagram
    return cell
  }
  
}

// MARK: - TABLE VIEW DELEGATE
// TableView 의 cell 을 선택할 때와 관련된 작업.
extension ListController: UITableViewDelegate {
   
  func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    let company = Constants.companyArray[indexPath.section][0].company
    let name = Constants.companyArray[indexPath.section][indexPath.row].name
    let address = Constants.companyArray[indexPath.section][indexPath.row].address
    let latitude = Constants.companyArray[indexPath.section][indexPath.row].latitude
    let longitude = Constants.companyArray[indexPath.section][indexPath.row].longitude
    
    let starLocation = StarLocation(c: company, n: name, lon: longitude, lat: latitude, ins: "", a: address)
    tableView.deselectRow(at: indexPath, animated: true)
    makeAlertDialog(title: NSLocalizedString("settingIdol", comment: ""), message: "", starLocation: starLocation)
  }
  
  func makeAlertDialog(title: String, message: String, starLocation: StarLocation){
    
    let alert = UIAlertController(title: title, message: message , preferredStyle: .alert)
    
    let cancelBtn = UIAlertAction(title: "NO", style: .destructive) { _ in
      alert.dismiss(animated: true, completion: nil)
    }
    
    let okBtn = UIAlertAction(title: "YES", style: .default) { [weak self] _ in
      UserDefaults.standard.savedStarLocation
      = CLLocation(latitude: starLocation.latitude , longitude: starLocation.longitude )
      UserDefaults.standard.set(starLocation.company,forKey: "company")
      UserDefaults.standard.set(starLocation.name, forKey: "name")
      UserDefaults.standard.set(starLocation.address, forKey: "address")
      self?.navigationController?.popViewController(animated: true)
    }
    alert.addAction(cancelBtn)
    alert.addAction(okBtn)
    self.present(alert, animated: true, completion: nil)
  }
  
}



