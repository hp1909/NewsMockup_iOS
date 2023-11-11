//
//  TimelineArticleItemView.swift
//  Mockup
//
//  Created by Nguyen Hoang Phuc on 09/11/2023.
//

import SwiftUI

struct TimelineArticleItemView: View {
    let color: Color

    var body: some View {
        HStack {
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
            .padding(.trailing)
            Rectangle()
                .cornerRadius(.medium)
                .foregroundStyle(color)
                .frame(width: 100, height: 100)
        }
    }
}

#Preview {
    TimelineArticleItemView(color: .orange)
}
