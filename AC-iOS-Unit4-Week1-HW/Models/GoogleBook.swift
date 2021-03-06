//
//  GoogleBook.swift
//  AC-iOS-Unit4-Week1-HW
//
//  Created by C4Q on 12/21/17.
//  Copyright © 2017 C4Q . All rights reserved.
//

import Foundation

struct GoogleBookWrapper: Codable {
    let items: [GoogleBook]?
}

struct GoogleBook: Codable, Equatable {
    
    let volumeInfo: VolumeInfo
    
    static func ==(lhs: GoogleBook, rhs: GoogleBook) -> Bool {
        return lhs.volumeInfo.title == rhs.volumeInfo.title && lhs.volumeInfo.industryIdentifiers?.first?.identifier == rhs.volumeInfo.industryIdentifiers?.first?.identifier
    }
    
}

struct VolumeInfo: Codable {
    let title: String
    let subtitle: String?
    let authors: [String]?
    let description: String?
    let industryIdentifiers: [IndustryIdentifier]?
    let imageLinks: ImageLink?
}

struct IndustryIdentifier: Codable {
    let identifier: String
}

struct ImageLink: Codable {
    let thumbnail: String
}
