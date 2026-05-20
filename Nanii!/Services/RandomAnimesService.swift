//
//  RandomAnimesService.swift
//  Nanii!
//
//  Created by Nafea Elkassas on 02/05/2026.
//

import Foundation
actor RandomAnimesService {
    
    
    
    func getAllAnimeRecommendations() async throws -> [AnimeRecommendationData] {
        let urlString = "\(Constants.shared.baseURL)\(Constants.shared.animeRecommendations)"
        
        guard let url = URL(string: urlString) else {
            throw NetworkingManager.NetworkingError.badURLResponse(url: URL(fileURLWithPath: "invalid"))
        }
        let data = try await NetworkingManager.download(url: url)
        let decoder = JSONDecoder()
        let response = try decoder.decode(AnimeRecommendationsModel.self, from: data)
        
        return response.data ?? []
    }
}
