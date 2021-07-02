//
//  Reviews.swift
//  AppStoreJSONApi
//
//  Created by 石川大輔 on 2021/07/01.
//

import Foundation

struct Reviews: Decodable {
    let feed : ReviewFeed
}

struct ReviewFeed: Decodable {
    let entry: [Entry]
}

struct Entry: Decodable {
    let title: Label
    let content: Label
    let author: Author
    
    let rating: Label
    
    private enum CodingKeys: String, CodingKey {
        case author, title, content
        case rating = "im:rating"
    }

}

struct Author: Decodable {
    let name: Label
}

struct Label: Decodable {
    let label: String
}
