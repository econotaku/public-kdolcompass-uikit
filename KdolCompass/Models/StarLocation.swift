//
//  StarLocation.swift
//  KdolCompass
//
//  Created by ECONOTAKU on 3/13/24.
//

import Foundation

struct StarLocation {
  let company: String
  let name: String
  let longitude: Double
  let latitude: Double
  let instagram: String
  let address: String
  
  init(c: String, n: String, lon: Double, lat: Double, ins: String, a: String) {
    company = c
    name = n
    longitude = lon
    latitude = lat
    instagram = ins
    address = a
  }
}
