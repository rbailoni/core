//
//  ManagerProtocol.swift
//
//
//  Created by Ricardo Bailoni on 26/08/24.
//

import Foundation
import Combine
import Errors

public protocol ManagerProtocol {
    func data<D: Decodable>(from endpoint: EndPointProtocol, completion: @escaping (Result<D, APIError>) -> Void)
    func data<D: Decodable>(from endpoint: EndPointProtocol) -> AnyPublisher<D, Error>
    func data<D: Decodable>(from endpoint: EndPointProtocol) async throws -> D
}
