//
//  TopAnimes.swift
//  Nanii!
//
//  Created by Nafea Elkassas on 19/05/2026.
//

import Foundation

struct TopAnimesResponse {
    let pagination: Pagination?
    let data: [TopAnime]?
}

struct TopAnime {
    let malID: Int?
    let url: String?
    let images: [String: Image]?
    let trailer: Trailer?
    let approved: Bool?
    let titles: [Title]?
    let title: String?
    let titleEnglish: String?
    let titleJapanese: String?
    let titleSynonyms: [String]?
    let type, source: String?
    let episodes: Int?
    let status: Status?
    let airing: Bool?
    let aired: Aired?
    let duration: String?
    let rating: Rating?
    let score: Double?
    let scoredBy, rank, popularity, members: Int?
    let favorites: Int?
    let synopsis, background: String?
    let season: Season?
    let year: Int?
    let broadcast: Broadcast?
    let producers, licensors, studios, genres: [Demographic]?
    let explicitGenres: [Any?]?
    let themes, demographics: [Demographic]?
}

struct TopAnimeAired {
    let from: Date?
    let to: Date?
    let prop: Prop?
    let string: String?
}

struct topAnimeProp: Codable {
    let from, to: TopAnimeFrom?
}

struct TopAnimeFrom: Codable {
    let day, month, year: Int?
}

struct TopAnimeBroadcast: Codable {
    let day, time: String?
    let timezone: Timezone?
    let string: String?
}

enum Timezone: String, Codable {
    case asiaTokyo
}

struct TopAnimeDemographic: Codable {
    let malID: Int?
    let type: DemographicType?
    let name: String?
    let url: String?
}

enum DemographicType: String, Codable {
    case anime
}

struct TopAnimeImage: Codable {
    let imageURL, smallImageURL, largeImageURL: String?
}

enum Rating: String, Codable {
    case pg13Teens13OrOlder
    case r17ViolenceProfanity
}

enum Season: String, Codable {
    case fall
    case spring
    case winter
}

enum Status: String, Codable {
    case currentlyAiring
    case finishedAiring
}

struct TopAnimeTitle: Codable {
    let type: TitleType?
    let title: String?
}

enum TitleType: String, Codable {
    case english
    case french
    case german
    case japanese
    case spanish
    case synonym
    case typeDefault
}

struct TopAnimeTrailer: Codable {
    let youtubeID: String?
    let url: String?
    let embedURL: String?
    let images: TopAnimeImages?
}

struct TopAnimeImages: Codable {
    let imageURL: String?
    let smallImageURL: String?
    let mediumImageURL: String?
    let largeImageURL: String?
    let maximumImageURL: String?
}

struct TopAnimePagination: Codable {
    let lastVisiblePage: Int?
    let hasNextPage: Bool?
    let currentPage: Int?
    let items: Items?
}

struct Items: Codable {
    let count, total, perPage: Int?
}

