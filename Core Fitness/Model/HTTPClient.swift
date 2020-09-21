//
//  HTTPClient.swift
//  Core Fitness
//
//  Created by Seab Jackson on 9/20/20.
//

import Foundation

public protocol HTTPClient {
    func get(from url: URL, completion: @escaping (HTTPClientResult) -> Void)
}

public enum HTTPClientResult {
    case success(Data, HTTPURLResponse)
    case failure(Error)
}
