//
//  BookData.swift
//  Book Watch
//
//  Created by Davonte Littleton on 4/28/23.
//

import Foundation

struct BookData: Codable {
    var author: String
    var country: String
    //var imageLink: String 
    var language: String
    var pages: Int
    var title: String
    var year: Int
    
}
