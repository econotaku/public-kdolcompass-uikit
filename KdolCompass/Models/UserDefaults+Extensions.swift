//
//  UserDefaults+Extensions.swift
//  KdolCompass
//
//  Created by ECONOTAKU on 3/14/24.
//

import Foundation
import CoreLocation

//목표위치를 설정하는 것은 여기서 작업을 해야 할 것 같다.
extension UserDefaults {
  
  // MARK: - 진북을 향하도록
  var northLocation: CLLocation {               //90, 0
    get { return CLLocation(latitude: latitude ?? 90, longitude: longitude ?? 0) }
    // default value is North Pole
    set {
      latitude = newValue.coordinate.latitude
      longitude = newValue.coordinate.longitude
    }
  }
  
  //#function: Literal Expression 의 하나
  //type = String , 표현되는 선언되는 것의 이름이라고 한다.
  //함수 안에서는 해당 함수의 이름, 메소드 안에서는 해당 메소드의 이름,
  //속성의 ‘획득자’ 나 ‘설정자’ 안에서는 해당 속성의 이름, init 이나 subscript 같은 ‘특수한 멤버’
  //안에서는 해당 키워드의 이름, 그리고 파일의 최상단에서는 현재 모듈의 이름
  
  private var latitude: Double? {
    get {
      if let _ = object(forKey: #function) {
        return double(forKey: #function)
      }
      return nil
    }
    set { set(newValue, forKey: #function) }
  }
  
  private var longitude: Double? {
    get {
      if let _ = object(forKey: #function) {
        return double(forKey: #function)
      }
      return nil
    }
    set { set(newValue, forKey: #function)}
  }
  
  //  37.464912890767074, 126.68031979911602
  // MARK: - 스타를 향하도록
  var savedStarLocation: CLLocation {
    //default = 북극
    get { return CLLocation(latitude: lat ?? Constants.bts.latitude, longitude: lon ?? Constants.bts.longitude) }
    
    set {
      lat = newValue.coordinate.latitude
      lon = newValue.coordinate.longitude
    }
  }
  
  private var lat: Double? {
    get {
      if let _ = object(forKey: #function) {
        return double(forKey: #function)
      }
      return nil
    }
    set { set(newValue, forKey: #function) }
  }
  
  private var lon: Double? {
    get {
      if let _ = object(forKey: #function) {
        return double(forKey: #function)
      }
      return nil
    }
    set { set(newValue, forKey: #function)}
  }
  
  // MARK: - 방향에 대한 변수
  var savedDirection: CLLocationDirection {
    get {
      return CLLocationDirection(direction ?? 0)
    }
    set {
      direction = newValue.magnitude
    }
  }
  
  private var direction: Double? {
    get {
      if let _ = object(forKey: #function) {
        return double(forKey: #function)
      }
      return nil
    }
    set { set(newValue, forKey: #function) }
  }
  
  
}


