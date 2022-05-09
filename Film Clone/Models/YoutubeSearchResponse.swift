//
//  YoutubeSearchResponse.swift
//  Film Clone
//
//  Created by BSP Macbook on 5/6/22.
//

import Foundation


struct YoutubeSearchResponse: Codable {
    let items: [VideoElement]
}

struct VideoElement: Codable {
    let id: IdVideoElement
}

struct IdVideoElement: Codable {
    let kind: String
    let videoId: String
}
