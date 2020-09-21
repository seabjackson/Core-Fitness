//
//  Root.swift
//  Core Fitness
//
//  Created by Seab Jackson on 9/20/20.
//

import Foundation

struct Root: Codable {
    let classes: FetchableValue<[Class]>
}

extension Root {
    enum CodingKeys: String, CodingKey {
        case classes = "classes"
    }
}
