//
//  FetchableValue.swift
//  Core Fitness
//
//  Created by Seab Jackson on 9/20/20.
//

import Foundation

/// A type to explicitly declare that it has no value or may have a value that has not been fetched yet
/// Optional Collections do not quite make this distinction
        
struct FetchableValue<T> {
    var value: RemoteValue<T>
    
    indirect enum RemoteValue<T> {
        case unfetched
        case fetched(value: T)
    }
}
