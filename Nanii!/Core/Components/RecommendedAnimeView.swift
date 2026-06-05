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
//        ZStack(alignment: .bottomLeading) {
//            animeImageView
//                .clipShape(RoundedRectangle(cornerRadius: 16))
//                .overlay(
//                    LinearGradient(
//                        colors: [
//                            .clear,
//                            .black.opacity(0.4),
//                            .black.opacity(0.8)
//                        ],
//                        startPoint: .center,
//                        endPoint: .bottom
//                    )
//                )
//            
//            VStack(alignment: .leading, spacing: 12) {
//                animeName
//                    .padding(.horizontal)
//
//                detailsButton
//            }
//            .padding(.bottom, 12)
//        }
//        .frame(height: 260)
        
        ZStack(alignment: .bottomLeading) {
            animeImageView
                .clipShape(RoundedRectangle(cornerRadius: 16))
                .overlay(
                    LinearGradient(
                        colors: [
                            .clear,
                            .black.opacity(0.4),
                            .black.opacity(0.8)
                        ],
                        startPoint: .center,
                        endPoint: .bottom
                    )
                )

            VStack(alignment: .leading, spacing: 12) {
                animeName
                    .padding(.horizontal)

                detailsButton
            }
            .padding(.bottom, 12)
        }
        .frame(width: UIScreen.main.bounds.width * 0.8)
        .frame(height: 260)
        
    }
}
//
//#Preview {
//    RecommendedAnimeImage()
//}
extension RecommendedAnimeView {
 
    private var animeImageView: some View {
        Group {
            if let entry = anime.entry?.first,
               let urlString = entry.images?.jpg?.imageURL,
               let url = URL(string: urlString) {
                
                AsyncImage(url: url) { image in
                    image
                        .resizable()
                        .scaledToFill()
                } placeholder: {
                    ProgressView()
                }
            } else {
                Color.gray
            }
        }
        .frame(width: UIScreen.main.bounds.width * 0.8)
        .frame(height: 260)
        .clipped()
    }
    
    private var animeName: some View {
        Text(anime.entry?.first?.title ?? "N/A")
            .font(.headline)
            .fontWeight(.bold)
            .foregroundStyle(.white)
            .lineLimit(1)
            .minimumScaleFactor(0.7)
            .truncationMode(.tail)
    }
    

    
    private var detailsButton: some View {
        Button(action: {
            
        }) {
            Text("View Details")
                .font(.headline)
                .fontWeight(.bold)
                .foregroundStyle(Color.theme.accent)
                .frame(maxWidth: .infinity)
                .padding(.vertical, 6)
                .background(Color.theme.purple)
                .clipShape(Capsule())
        }
        .padding(.horizontal)
    }
}
