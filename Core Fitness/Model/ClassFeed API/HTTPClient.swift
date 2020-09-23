//
//  HTTPClient.swift
//  Core Fitness
//
//  Created by Seab Jackson on 9/20/20.
//

import Foundation

public protocol HTTPClientTask {
    func cancel()
}

public protocol HTTPClient {
    typealias Result = Swift.Result<(Data, HTTPURLResponse), Error>
    
    /// The completion handler can be called in any thread
    /// Clients are responsible to dispatch to appropriate threads, if required
    func get(from url: URL, completion: @escaping (Result) -> Void) ->  HTTPClientTask
}

