//
//  LanguageBadge.swift
//  Calc
//
//  Created by Viachaslau Hryniuk on 16/04/2025.
//

import SwiftUI

struct LanguageBadge: View {
    let language: String
    let level: String

    var body: some View {
        HStack(spacing: 4) {
            Text(language)
            Text("(\(level))")
                .font(.caption)
                .foregroundStyle(.secondary)
        }
        .font(.subheadline)
        .padding(.horizontal, 10)
        .padding(.vertical, 5)
        .background(.ultraThinMaterial)
        .clipShape(Capsule())
    }
}
