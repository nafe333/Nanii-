//
//  NetworkingManager.swift
//  Nanii!
//
//  Created by Nafea Elkassas on 30/04/2026.
//

import Foundation
class NetworkingManager {
    
       //MARK: - Handling Errors Logic
    enum NetworkingError: LocalizedError {
        case badURLResponse(url: URL)
        case unknown
        
        var errorDescription: String?{
            switch self {
            case.badURLResponse(url: let url): return "Bad response from the url \(url)"
            case .unknown: return "Unknown error happenned"
            }
        }
    }
    
       //MARK: - Networking Approach
    static func handleURL(url: String) -> URLRequest? {
        guard let url = URL(string: url) else { return nil }
        var request = URLRequest(url: url)
        return request
    }
    
    // this one must return response
    static func download(url: URL) async throws -> Data {
        guard let request = handleURL(url: url.absoluteString) else {
            throw NetworkingError.badURLResponse(url: url)
        }
        do {
            let (data, response) = try await URLSession.shared.data(for: request)
            guard let httpResponse = response as? HTTPURLResponse,
                  httpResponse.statusCode >= 200 && httpResponse.statusCode < 300 else {
                throw NetworkingError.badURLResponse(url: url)
            }
            return data
        } catch  {
            throw error
        }
    }
}
