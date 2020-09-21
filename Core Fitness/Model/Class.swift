//
//  Class.swift
//  Core Fitness
//
//  Created by Seab Jackson on 9/20/20.
//

import Foundation

struct Class: Codable {
    let descriptionField : String?
    let id: Int
    let instructor : String?
    let modality : String?
    let time : Int?
    let title : String?
}

extension Class {
    enum CodingKeys: String, CodingKey {
        case descriptionField = "description"
        case id = "id"
        case instructor = "instructor"
        case modality = "modality"
        case time = "time"
        case title = "title"
    }
    
    
}

struct ID: Codable {
    let value: Int
}
