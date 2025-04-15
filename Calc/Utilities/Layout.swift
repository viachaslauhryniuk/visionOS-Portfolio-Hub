//
//  implementation.swift
//  Calc
//
//  Created by Viachaslau Hryniuk on 16/04/2025.
//


import SwiftUI

struct FlowLayout: Layout {
    var spacing: CGFloat = 8

    func sizeThatFits(proposal: ProposedViewSize, subviews: Subviews, cache: inout ()) -> CGSize {
        guard !subviews.isEmpty else { return .zero }
        let result = layout(in: proposal.width ?? 0, subviews: subviews)
        return result.size
    }

    func placeSubviews(in bounds: CGRect, proposal: ProposedViewSize, subviews: Subviews, cache: inout ()) {
        guard !subviews.isEmpty else { return }
        let result = layout(in: bounds.width, subviews: subviews)
        for row in result.rows {
            for element in row.elements {
                let point = CGPoint(x: element.xOffset + bounds.minX, y: element.yOffset + bounds.minY)
                subviews[element.index].place(at: point, proposal: .unspecified)
            }
        }
    }

    private func layout(in width: CGFloat, subviews: Subviews) -> (rows: [Row], size: CGSize) {
         var rows: [Row] = []
        var currentRow = Row(elements: [], width: 0, height: 0)
        var currentY: CGFloat = 0
        var maxWidth: CGFloat = 0

        for (index, subview) in subviews.enumerated() {
            let subviewSize = subview.sizeThatFits(.unspecified)

            if currentRow.width + subviewSize.width + (currentRow.elements.isEmpty ? 0 : spacing) <= width || currentRow.elements.isEmpty {
                let xOffset = currentRow.width + (currentRow.elements.isEmpty ? 0 : spacing)
                currentRow.elements.append(RowElement(index: index, xOffset: xOffset, yOffset: currentY))
                currentRow.width += subviewSize.width + (currentRow.elements.count > 1 ? spacing : 0)
                currentRow.height = max(currentRow.height, subviewSize.height)
            } else {
                maxWidth = max(maxWidth, currentRow.width)
                rows.append(currentRow)
                currentY += currentRow.height + spacing
                currentRow = Row(elements: [RowElement(index: index, xOffset: 0, yOffset: currentY)], width: subviewSize.width, height: subviewSize.height)
            }
        }

        if !currentRow.elements.isEmpty {
            maxWidth = max(maxWidth, currentRow.width)
            rows.append(currentRow)
        }

        let totalHeight = currentY + currentRow.height
        let finalWidth = max(width > 0 ? width : 0, maxWidth)
        return (rows, CGSize(width: finalWidth, height: totalHeight))
    }

    private struct Row {
        var elements: [RowElement]
        var width: CGFloat
        var height: CGFloat
    }
    private struct RowElement {
        let index: Int
        let xOffset: CGFloat
        let yOffset: CGFloat
    }
}
