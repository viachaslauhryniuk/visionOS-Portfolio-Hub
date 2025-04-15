//
//  SkillTags.swift
//  Calc
//
//  Created by Viachaslau Hryniuk on 16/04/2025.
//

import SwiftUI

struct SkillTags: View {
    var category: String? = nil
    let skills: [String]

    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            if let category = category {
                Text(category)
                    .font(.headline)
            }
            FlowLayout(spacing: 8) {
                ForEach(skills, id: \.self) { skill in
                    Text(skill)
                        .font(.caption)
                        .padding(.horizontal, 10)
                        .padding(.vertical, 5)
                        .background(.ultraThinMaterial)
                        .clipShape(Capsule())
                }
            }
        }
    }
}

