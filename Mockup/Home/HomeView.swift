//
//  HomeView.swift
//  Mockup
//
//  Created by Nguyen Hoang Phuc on 08/11/2023.
//

import SwiftUI

struct HomeView: View {
    let items = 1...50
    let todayItems = 1...10
    let todayItems2 = 11...20
    let rows = [
        GridItem(.fixed(120), spacing: 24),
        GridItem(.fixed(120), spacing: 24)
    ]

    var body: some View {
        VStack(alignment: .leading) {
            Text("Hi, Kevin")
                .font(.header)
                .frame(maxWidth: .infinity, alignment: .leading)
            Spacer()
                .frame(height: .medium)
            ScrollView {
                LazyVStack(content: {
                    FeaturedArticleItemView()
                        .frame(height: 400)
                        .cornerRadius(.large)
                    Spacer()
                        .frame(height: .large)

                    Text("For You")
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .font(.system(size: 24, weight: .semibold))
                    ScrollView(.horizontal) {
                        LazyHGrid(rows: rows) {
                            ForEach(items, id: \.self) { item in
                                CategorizeArticleItemView()
                                    .frame(maxWidth: 320)
                            }
                        }
                        .frame(height: 280)
                    }

                    Rectangle()
                        .frame(height: 3)
                        .padding(.top, .large)
                        .foregroundStyle(.gray)
                    Text("Today")
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .font(.system(size: 24, weight: .semibold))

                    ForEach(todayItems, id: \.self) { item in
                        TimelineArticleItemView(color: .orange)
                            .padding(.vertical, .small)
                    }

                    Rectangle()
                        .frame(height: 3)
                        .padding(.top, .large)
                        .foregroundStyle(.gray)
                    Text("Yesterday")
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .font(.system(size: 24, weight: .semibold))

                    ForEach(todayItems2, id: \.self) { item in
                        TimelineArticleItemView(color: .green)
                            .padding(.vertical, .small)
                    }
                })
            }
        }
        .padding(.horizontal, .medium)
    }
}

#Preview {
    HomeView()
}
