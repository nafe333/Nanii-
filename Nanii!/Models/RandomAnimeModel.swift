//
//  RandomAnimeModel.swift
//  Nanii!
//
//  Created by Nafea Elkassas on 30/04/2026.
//

import Foundation

// MARK: - Welcome
struct RandomAnimeModel: Codable {
    let data: RandomAnimes?
}

struct RandomAnimes: Codable {
    let malID: Int?
    let url: String?
    let images: [String: Image]?
    let trailer: Trailer?
    let approved: Bool?
    let titles: [Title]?
    let title, titleEnglish, titleJapanese: String?
    let titleSynonyms: [String]?
    let type, source: String?
    let episodes: Int?
    let status: String?
    let airing: Bool?
    let aired: Aired?
    let duration, rating: String?
    let score: Double?
    let scoredBy, rank, popularity, members: Int?
    let favorites: Int?
    let synopsis, background, season: String?
    let year: Int?
    let broadcast: Broadcast?
    let producers, licensors, studios, genres: [Demographic]?
    let explicitGenres, themes, demographics: [Demographic]?
}

struct Aired: Codable {
    let from, to: String?
    let prop: Prop?
}

struct Prop: Codable {
    let from, to: From?
    let string: String?
}

struct From: Codable {
    let day, month, year: Int?
}

struct Broadcast: Codable {
    let day, time, timezone, string: String?
}

struct Demographic: Codable {
    let malID: Int?
    let type, name, url: String?
}

struct Image: Codable {
    let imageURL, smallImageURL, largeImageURL: String?
}

struct Title: Codable {
    let type, title: String?
}

struct Trailer: Codable {
    let youtubeID, url, embedURL: String?
}
