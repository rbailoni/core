//
//  Mirror.swift
//  
//
//  Created by Ricardo Bailoni on 25/08/24.
//

import Foundation

public extension Mirror {
    func firstChild<T>(of _: T.Type, in label: String? = nil) -> T? {
        children.lazy.compactMap {
            guard let value = $0.value as? T else { return nil }
            guard let label = label else { return value }
            return ($0.label == label || $0.label == "$__lazy_storage_$_" + label) ? value : nil
        }.first
    }
    
    func mirrorChild<T>(of type: T.Type, in label: String? = nil) -> Mirror? {
        guard let child = firstChild(of: type, in: label) else {
            return nil
        }
        return Mirror(reflecting: child)
    }
}
