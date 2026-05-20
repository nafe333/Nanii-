//
//  HomeViewModel.swift
//  Nanii!
//
//  Created by Nafea Elkassas on 02/05/2026.
//

import Foundation
@MainActor
class HomeViewModel: ObservableObject {
    
    @Published var recommendedAnimes: [AnimeRecommendationData] = []
    let service = RandomAnimesService()

    func getAllRecommendedAnimes() async {
            do {
                let data = try await service.getAllAnimeRecommendations()
                self.recommendedAnimes = data
            } catch {
                print(error)
            }
        }
    
}
