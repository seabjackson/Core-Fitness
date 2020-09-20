//
//  Root.swift
//  Core Fitness
//
//  Created by Seab Jackson on 9/20/20.
//

import Foundation

struct Root: Codable {
    let classes: [Class]
}

extension Root {
    enum CodingKeys: String, CodingKeys {
        case classes = "classes"
    }
    
    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        classes = try values.decodeIfPresent([Class].self, forKey: .classes)
    }
}
