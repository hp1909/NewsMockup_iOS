//
//  FeaturedArticleItemView.swift
//  Mockup
//
//  Created by Nguyen Hoang Phuc on 08/11/2023.
//

import SwiftUI

struct FeaturedArticleItemView: View {
    var body: some View {
        ZStack {
            VStack {
                HStack {
                    Spacer()
                    Image(systemName: "bookmark")
                        .foregroundStyle(.blue)
                        .font(.system(size: 16, weight: .bold))
                        .background {
                            RoundedRectangle(cornerRadius: 16)
                                .foregroundStyle(.white)
                                .frame(width: 32, height: 32)
                        }
                }
                .padding(.medium)
                Spacer()
                Text("Meta will start requiring disclosures for political ads manipulated with AI")
                    .font(.system(size: 32, weight: .bold))
                    .lineLimit(3)
                HStack {
                    RoundedRectangle(cornerRadius: 16)
                        .frame(width: 32, height: 32)
                    Text("Techcrunch")
                        .font(.system(size: 16, weight: .bold))
                    Spacer()
                    Text("4h ago")
                        .font(.system(size: 16, weight: .semibold))
                }
            }
            .frame(maxWidth: .infinity)
            .padding(.horizontal, .large)
            .padding(.vertical, .medium)
        }
        .frame(maxWidth: .infinity)
        .background {
            Rectangle()
                .foregroundStyle(.quaternary)
        }
    }
}

#Preview {
    FeaturedArticleItemView()
}
