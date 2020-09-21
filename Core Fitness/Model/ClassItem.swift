//
//  ClassItem.swift
//  Core Fitness
//
//  Created by Seab Jackson on 9/20/20.
//

import Foundation

public struct ClassItem: Equatable {
    
    let description: String?
    let id: Int
    let instructor : String?
    let modality : String?
    let time : Int?
    let title : String?
    
    public init(description: String?, id: Int, instructor: String?, modality: String?, time: Int?, title: String?) {
        self.description = description
        self.id = id
        self.instructor = instructor
        self.modality = modality
        self.time = time
        self.title = title
    }
}
