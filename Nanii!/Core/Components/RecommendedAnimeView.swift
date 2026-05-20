//
//  AnimeImage.swift
//  Nanii!
//
//  Created by Nafea Elkassas on 02/05/2026.
//

import SwiftUI

struct RecommendedAnimeView: View {
     let anime: AnimeRecommendationData
    let screenWidth = UIScreen.main.bounds.width

    
    var body: some View {
        ZStack(alignment: .bottomLeading) {
            animeImageView
                .frame(width: screenWidth * 0.8)
                .frame(maxHeight: 260)
                .clipShape(RoundedRectangle(cornerRadius: 16))
            
            
            VStack(alignment: .leading, spacing: 12) {
                Spacer()
                animeName
                detailsButton

           }

                        
        }
        .frame(maxHeight: 260)
        
    }
}
//
//#Preview {
//    RecommendedAnimeImage()
//}
extension RecommendedAnimeView {
    
    @ViewBuilder
    private var animeImageView: some View {
        if let entry = anime.entry?.first,
           let urlString = entry.images?.jpg?.imageURL,
           let url = URL(string: urlString) {
            
            AsyncImage(url: url) { image in
                image.resizable().scaledToFill()
            } placeholder: {
                ProgressView()
            }
            
        } else {
            ProgressView()
        }
    }
    
    private var animeName: some View {
        Text(anime.entry?.first?.title ?? "N/A")
            .font(.headline)
            .fontWeight(.bold)
            .lineLimit(1)
            .truncationMode(.tail)
            .foregroundStyle(Color.theme.accent)
            .frame(maxWidth: .infinity, alignment: .leading)
            .frame(minHeight: 46)
            .padding(.leading)
    }
    
    private var detailsButton: some View {
        Button(action: {
            
        }
               , label: {
            Text("View Details")
                .frame(maxWidth: .infinity)
                .font(.headline)
                .fontWeight(.bold)
                .foregroundStyle(Color.theme.accent)
                .background(Color.theme.purple)
                .clipShape(Capsule())
                .padding(.horizontal)
                .padding(.vertical, 8)
        })
    }
}
