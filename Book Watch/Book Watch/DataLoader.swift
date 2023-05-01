//
// DataLoader.swift
// Book Watch
//
// Created by Davonte Littleton on 4/29/23.

import Foundation 

public class DataLoader {
  @Published var bookData = [BookData]()
  
  func load() {
    if let fileLocation = Bundle.main.url(forResource: "books", withExtension: "json") {
      //do catch to check for error
      do {
        let data = try Data(contentsOf: fileLocation)
      } catch {
        print(error)
      }
    }
  }
}
