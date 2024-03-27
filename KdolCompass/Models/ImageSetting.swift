//
//  ImageSetting.swift
//  KdolCompass
//
//  Created by ECONOTAKU on 3/20/24.
//

import UIKit


// MARK: Image Migration

func migrateProfileImageIfNeeded() {
  let userDefaults = UserDefaults.standard
  
  // 기존에 JSON 형식으로 저장된 이미지 데이터 확인,
  if let imageData = userDefaults.object(forKey: "profileImage") as? Data,
     let image = UIImage(data: imageData) {
    
    // 이미지 파일로 저장
    saveImageToFileSystem(image: image)
    
    // 기존의 UserDefaults 데이터 삭제
    userDefaults.removeObject(forKey: "profileImage")
  }
}

func saveImageToFileSystem(image: UIImage) {
  guard let imageData = image.jpegData(compressionQuality: 1) else { return }
  let fileName = "savedProfileImage.jpg"
  let filePath = getDocumentsDirectory().appendingPathComponent(fileName)
  
  do {
    try imageData.write(to: filePath)
  } catch {
    print("Error saving migrated image: \(error)")
  }
}

func getDocumentsDirectory() -> URL {
  FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)[0]
}

func loadProfileImage() -> UIImage? {
  let fileName = "savedProfileImage.jpg"
  let fileURL = getDocumentsDirectory().appendingPathComponent(fileName)
  return UIImage(contentsOfFile: fileURL.path)
}
