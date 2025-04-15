//
//  SectionView.swift
//  Calc
//
//  Created by Viachaslau Hryniuk on 16/04/2025.
//

import SwiftUI

struct SectionView<Content: View>: View {
    let title: String
    let content: Content

    init(title: String, @ViewBuilder content: () -> Content) {
        self.title = title
        self.content = content()
    }

    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            Text(title)
                .font(.title2)
                .fontWeight(.semibold)
                .padding(.bottom, 5)
            content
        }
    }
}

