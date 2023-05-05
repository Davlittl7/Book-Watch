//
// DataLoader.swift
// Book Watch
//
// Created by Davonte Littleton on 4/29/23.

import Foundation 

public class DataLoader {
  @Published var bookData = [BookData]()
  
  init() {
    load()
    sort()
  }
  func load() {
    if let fileLocation = Bundle.main.url(forResource: "books", withExtension: "json") {
      //do catch to check for error
      do {
        let data = try Data(contentsOf: fileLocation)
        let jsonDecoder = JSONDecoder()
        let dataFromJson = try jsonDecoder.decode([BookData].self, from: data)
        
        self.bookData = dataFromJson
      } catch {
        print(error)
      }
    }
  }
  
  func sort() {
    self.bookData = self.bookData.sorted(by: { $0.title < $1.title }) 
  }
}
