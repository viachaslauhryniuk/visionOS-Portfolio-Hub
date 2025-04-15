//
//  PortfolioItemView.swift
//  Calc
//
//  Created by Viachaslau Hryniuk on 14/04/2025.
//

import SwiftUI

struct PortfolioItemView: View {
    let item: PortfolioItem

    var body: some View {
        VStack(spacing: 20) {
            Spacer()
            Image(item.logoName)
                .resizable()
                .scaledToFit()
                .frame(width: 150, height: 150)
                .shadow(radius: 5)
                .background(Circle().fill(.white.opacity(0.1)))
                .clipShape(Circle())

            VStack(alignment: .center, spacing: 8) {
                Text(item.title)
                    .font(.title)
                    .fontWeight(.bold)
                Text(item.description)
                    .font(.system(size: 30))
                    .foregroundStyle(.secondary)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 40)
            }
            Spacer()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

