//
//  HomeView.swift
//  Nanii!
//
//  Created by Nafea Elkassas on 02/05/2026.
//

import SwiftUI

struct HomeView: View {
    @StateObject var viewModel = HomeViewModel()
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 16) {
                ForEach(viewModel.recommendedAnimes) { recommendation in
                    if (recommendation.entry?.first) != nil {
                       RecommendedAnimeView(anime: recommendation)
                            .frame(width: UIScreen.main.bounds.width * 0.8)
                    }
                }
            }
        }
        .padding(.horizontal, 16)

            .task {
                if viewModel.recommendedAnimes.isEmpty {
                    await viewModel.getAllRecommendedAnimes()
                }
            }
    }
        
        
}

#Preview {
    HomeView()
}
