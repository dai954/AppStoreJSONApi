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

struct FeedResult: Decodable, Hashable {
    let id, name, artistName, artworkUrl100: String
    
    
//   FeedResult(id: "1269225754", name: "Gorogoa", artistName: "Annapurna Interactive", artworkUrl100: "https://is1-ssl.mzstatic.com/image/thumb/Purple128/v4/b4/01/d7/b401d7d4-7fd1-5494-c1f5-5e42bb8da080/AppIcon-0-1x_U007emarketing-0-85-220-0-7.png/200x200bb.png")

}
