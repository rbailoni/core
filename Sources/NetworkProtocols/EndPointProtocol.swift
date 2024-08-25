//
//  EndPointProtocol.swift
//
//
//  Created by Ricardo Bailoni on 25/08/24.
//

import Foundation

public protocol EndPointProtocol {
    var baseURL: String { get }
    var path: String { get }
    var method: Method { get }
    var queries: [URLQueryItem]? { get }
    var headers: [String: String]? { get }
    var body: HTTPBody { get }
}

public enum Method: String {
    case GET
    case POST
    case PUT
    case DELETE
}

extension EndPointProtocol {
    public var body: HTTPBody { return EmptyBody() }
}
