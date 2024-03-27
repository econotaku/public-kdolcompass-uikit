//
//  CLLocation+Extension.swift
//  KdolCompass
//
//  Created by ECONOTAKU on 3/14/24.
//

import CoreLocation
import UIKit

//기기의 상태와 무관한 동,서,남,북 방위값에 관련된 코드들 인 것 같다.
extension CLLocation {
                                                      //system 을 통해 위도, 경도, 코스 정보를 얻는듯
  func bearingToLocationRadian(_ destinationLocation: CLLocation) -> CGFloat {
    
    // 현재 기기가 위치하는 위도와 경도를 나타내는 것 같다.
    // (1) 위도,경도 값을 Radian 값으로 변환
    // (2) float type 인 Radian 값을 double 로 변환
    let lat1 = self.coordinate.latitude.degreesToRadians
    let lon1 = self.coordinate.longitude.degreesToRadians
    
    // 목표 위치에 대한 위도와 경도
    let lat2 = destinationLocation.coordinate.latitude.degreesToRadians
    let lon2 = destinationLocation.coordinate.longitude.degreesToRadians
    
    // 목표위치의 경도 - 현재 위치 경도: 위치의 동서간의 차이
    let dLon = lon2 - lon1
   
    let y = sin(dLon) * cos(lat2)
    let x = cos(lat1) * sin(lat2) - sin(lat1) * cos(lat2) * cos(dLon)
    let radianBearing = atan2(y, x)
                        //역탄젠트 or 탄젠트의 역함수
                        //두 점사이의 상대좌표(x,y)를 받아 절대각을 -pi~pi의 Radian 값으로 반환한다.
                        //atan()과 달리 파라미터로 음수를 허용
    return CGFloat(radianBearing)
  }
}

extension CGFloat {
  // 180 degree = pi radian
  // 1 radian = 180 / pi degree = 약 57.3 도
  // 1 degree = pi / 180 radian
  // degree 값에 (pi/180) 을 곱하여 radian 을 도출.
  var degreesToRadiansForDouble: CGFloat { return self * .pi / 180 }
  // 이것은 역으로 radian에서 degree 도출.
  var radiansToDegreesForDouble: CGFloat { return self * 180 / .pi }
}

private extension Double {
  var degreesToRadians: Double { return Double(CGFloat(self).degreesToRadiansForDouble)}
  var radiansToDegrees: Double { return Double(CGFloat(self).radiansToDegreesForDouble)}
}

