//
//  ClassLoader.swift
//  Core Fitness
//
//  Created by Seab Jackson on 9/20/20.
//

import Foundation

public enum LoadClassResult {
    case success([Class])
    case failure(Error)
}

public protocol ClassLoader {
    func load(completion: @escaping (LoadClassResult) -> Void)
}
