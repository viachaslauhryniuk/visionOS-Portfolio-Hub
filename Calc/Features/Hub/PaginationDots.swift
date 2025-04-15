//
//  PaginationDots.swift
//  Calc
//
//  Created by Viachaslau Hryniuk on 14/04/2025.
//

import SwiftUI

struct PaginationDots: View {
    let pages: [PageContent]
    @Binding var currentPageID: PageContent.ID?

    private var currentPageIndex: Int {
        guard let currentPageID = currentPageID,
              let index = pages.firstIndex(where: { $0.id == currentPageID }) else {
            return 0
        }
        return index
    }

    var body: some View {
        VStack(spacing: 8) {
            ForEach(pages.indices, id: \.self) { index in
                Circle()
                    .fill(index == currentPageIndex ? Color.primary : Color.secondary)
                    .frame(width: 8, height: 8)
                    .scaleEffect(index == currentPageIndex ? 1.2 : 0.8)
                    .opacity(index == currentPageIndex ? 1.0 : 0.5)
                    .animation(.spring(response: 0.3, dampingFraction: 0.6), value: currentPageIndex)
            }
        }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .trailing)
        .padding(.trailing, 20)
    }
}
