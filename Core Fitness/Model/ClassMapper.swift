//
//  ClassMapper.swift
//  Core Fitness
//
//  Created by Seab Jackson on 9/20/20.
//

import Foundation

internal final class ClassMapper {
    
    private struct Root: Decodable {
        let classes: [Class]
    }
    
    private struct Class: Decodable {
        let description: String?
        let id: Int
        let instructor : String?
        let modality : String?
        let time : Int?
        let title : String?
    }
    
    private static var OK_200: Int { return 200 }
    
    internal static func map(_ data: Data, from response: HTTPURLResponse) -> RemoteClassLoader.Result {
        guard response.statusCode == OK_200, let root = try? JSONDecoder().decode(Root.self, from: data) else {
            return .failure(RemoteClassLoader.Error.invalidData)
        }
        return .success(root.classes)
    }
   
    
}
