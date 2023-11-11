//
//  CategorizeArticleItemView.swift
//  Mockup
//
//  Created by Nguyen Hoang Phuc on 08/11/2023.
//

import SwiftUI

struct CategorizeArticleItemView: View {
    var body: some View {
        HStack {
            Rectangle()
                .cornerRadius(.medium)
                .foregroundStyle(.orange)
                .frame(width: 100)
            VStack(alignment: .leading) {
                HStack {
                    RoundedRectangle(cornerRadius: 12)
                        .frame(width: 24, height: 24)
                    Text("Techcrunch")
                        .font(.system(size: 12, weight: .bold))
                }
                Spacer()
                Text("Meta will start requiring disclosures for political ads manipulated with AI")
                    .font(.system(size: 18, weight: .semibold))
                    .lineLimit(3)
                Spacer()
                Text("4h ago")
                    .font(.system(size: 12, weight: .semibold))
            }
            .padding(.horizontal)
        }
    }
}

#Preview {
    CategorizeArticleItemView()
}
