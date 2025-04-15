import Foundation

enum PageContent: Identifiable, Hashable {
    case avatar
    case portfolioItem(PortfolioItem)

    var id: String {
        switch self {
        case .avatar:
            return "avatarPageID"
        case .portfolioItem(let item):
            return item.id.uuidString
        }
    }

    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
}
