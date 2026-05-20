//
//  AnimeRecommendations.swift
//  Nanii!
//
//  Created by Nafea Elkassas on 02/05/2026.
//


import Foundation

struct AnimeRecommendationsModel: Codable {
    let data: [AnimeRecommendationData]?
    let pagination: Pagination?
}

struct AnimeRecommendationData: Codable, Identifiable {
    let id = UUID()
    let malID: String?
    let entry: [Entry]?
    let content: String?
    let user: User?
}

struct Entry: Codable {
    let malID: Int?
    let url: String?
    let images: Images?
    let title: String?
}

struct Imagee: Codable {
    let imageURL: String?
    let smallImageURL: String?
    let largeImageURL: String?
    
    enum CodingKeys: String, CodingKey {
        case imageURL = "image_url"
        case smallImageURL = "small_image_url"
        case largeImageURL = "large_image_url"
    }
}

struct Images: Codable {
    let jpg: Imagee?
    let webp: Imagee?
}

struct User: Codable {
    let url, username: String?
}

struct Pagination: Codable {
    let lastVisiblePage: Int?
    let hasNextPage: Bool?
}
