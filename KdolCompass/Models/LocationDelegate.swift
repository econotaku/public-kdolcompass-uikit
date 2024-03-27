//
//  LocationDelegate.swift
//  KdolCompass
//
//  Created by ECONOTAKU on 3/14/24.
//

import CoreLocation
import UIKit
                                  
final class LocationDelegate: NSObject, CLLocationManagerDelegate {
                          
  var locationCallback: ((CLLocation) -> ())? = nil
  var deviceHeadingCallback: ((CLLocationDirection) -> ())? = nil
  
  //위치에 대한 함수
  func locationManager(_ manager: CLLocationManager,
                       didUpdateLocations locations: [CLLocation]) {
    guard let currentLocation = locations.first else {return}
    locationCallback?(currentLocation)
  }

  //방향에 대한 함수
  func locationManager(_ manager: CLLocationManager,
                       didUpdateHeading newHeading: CLHeading) {
    deviceHeadingCallback?(newHeading.trueHeading)
  }
  
  //에러에 처리
  func locationManager(_ manager: CLLocationManager,
                       didFailWithError error: Error) {
    print("⚠️ Error while updating location " + error.localizedDescription)
  }
  
}
