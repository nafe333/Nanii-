//
//  Constants.swift
//  Nanii!
//
//  Created by Nafea Elkassas on 30/04/2026.
//

import Foundation
final class Constants {
    
    static let shared = Constants()
    private init(){}
    
     let baseURL: String = "https://api.jikan.moe/v4"
     let randomAnimeEndpoint: String = "/random/anime"
    let animeRecommendations: String = "/recommendations/anime"
}
