//
//  Video.swift
//  youtube-app
//
//  Created by Mac on 6/11/20.
//  Copyright © 2020 Mac. All rights reserved.
//

import Foundation

struct Video: Decodable {
    
    var videoId = ""
    var title = ""
    var description = ""
    var thumbnail = ""
    var published = Date()
        
    enum CodingKeys: String, CodingKey {
        
        case snippet
        case thumbnails
        case high
        case resourceId
        
        case published = "publishedAt"
        case videoId
        case title
        case description
        case thumbnail = "url"
        
    }
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        let snippetContainer = try container.nestedContainer(keyedBy: CodingKeys.self, forKey: .snippet)
        
        // Parse title
        self.title = try snippetContainer.decode(String.self, forKey: .title)
        
        // Parse description
        self.description = try snippetContainer.decode(String.self, forKey: .description)
        
        // Parse publish date
        self.published = try snippetContainer.decode(Date.self, forKey: .published)
        
        // Parse thubmnails
        let thumbnailContainer = try snippetContainer.nestedContainer(keyedBy: CodingKeys.self, forKey: .thumbnails)
        
        let highContainer = try thumbnailContainer.nestedContainer(keyedBy: CodingKeys.self, forKey: .high)
        
        self.thumbnail = try highContainer.decode(String.self, forKey: .thumbnail)
        
        // Parse video id
        let resourceContainer = try snippetContainer.nestedContainer(keyedBy: CodingKeys.self, forKey: .resourceId)
        self.videoId = try resourceContainer.decode(String.self, forKey: .videoId)
    }
    
}
