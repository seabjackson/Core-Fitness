//
//  URLSessionHTTPClient.swift
//  Core Fitness
//
//  Created by Seab Jackson on 9/20/20.
//

import Foundation

class URLSessionHTTPClient {
    
    private let session: URLSession
    
    init(session: URLSession = .shared) {
        self.session = session
    }
    
    func get(from url: URL, completion: @escaping (HTTPClientResult) -> Void) {
        session.dataTask(with: url) { _, _, error in
            if let error = error {
                completion(.failure(error))
            }
        }
    }
}
