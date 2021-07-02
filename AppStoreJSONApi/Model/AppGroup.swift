//
//  AppGroup.swift
//  AppStoreJSONApi
//
//  Created by 石川大輔 on 2021/06/26.
//

import Foundation

struct AppGroup: Decodable {
    let feed: Feed
}

struct Feed: Decodable {
    let title: String
    let results: [FeedResult]
}

struct FeedResult: Decodable {
    let id, name, artistName, artworkUrl100: String
}
