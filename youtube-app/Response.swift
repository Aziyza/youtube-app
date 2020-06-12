//
//  Response.swift
//  youtube-app
//
//  Created by Mac on 6/13/20.
//  Copyright © 2020 Mac. All rights reserved.
//

import Foundation

struct Response: Decodable {
    var items: [Video]?
    
    enum CodingKeys: String , CodingKey {
        case items
    }
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.items = try container.decode([Video].self, forKey: .items)
    }
}
