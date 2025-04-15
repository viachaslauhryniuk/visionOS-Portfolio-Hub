//
//  ContactButtonContent.swift
//  Calc
//
//  Created by Viachaslau Hryniuk on 16/04/2025.
//

import SwiftUI

struct ContactButtonContent: View {
    let icon: String
    let label: String

    var body: some View {
        HStack {
            Label {
                Text(label)
                    .padding(.leading, 10)
            } icon: {
                Image(icon)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 24, height: 24)
            }
            .font(.headline)
            .foregroundStyle(.primary)

            Spacer()
            Image(systemName: "chevron.right")
                .font(.callout)
                .foregroundStyle(.secondary)
        }
        .frame(maxWidth: .infinity) 
        .padding(EdgeInsets(top: 15, leading: 20, bottom: 15, trailing: 20))
        .background(.thinMaterial)
        .clipShape(RoundedRectangle(cornerRadius: 15))
    }
}

