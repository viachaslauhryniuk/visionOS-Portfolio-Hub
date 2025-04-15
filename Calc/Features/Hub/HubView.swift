import SwiftUI

struct HubView: View {
    @Environment(\.openWindow) var openWindow

    private let portfolioItems: [PortfolioItem] = PortfolioData.items
    private var allPages: [PageContent] {
        [.avatar] + portfolioItems.map { .portfolioItem($0) }
    }

    @State private var currentPageID: PageContent.ID?
    private var isShowingAvatarPage: Bool {
        currentPageID == nil || currentPageID == allPages.first?.id
    }

    var body: some View {
        ZStack {
            VStack(spacing: 0) {
                if isShowingAvatarPage {
                    HubHeaderView()
                        .transition(.opacity.combined(with: .move(edge: .top)))
                }

                ScrollView(.vertical) {
                    LazyVStack(spacing: 0) {
                        ForEach(allPages) { page in
                             PageViewHolder(page: page)
                                .containerRelativeFrame(.vertical)
                                .id(page.id)
                        }
                    }
                    .scrollTargetLayout()
                }
                .scrollIndicators(.hidden)
                .scrollTargetBehavior(.paging)
                .scrollPosition(id: $currentPageID)

            }
            .animation(.easeInOut(duration: 0.4), value: isShowingAvatarPage)

            PaginationDots(
                pages: allPages,
                currentPageID: $currentPageID
            )

        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .glassBackgroundEffect()
        .ornament(attachmentAnchor: .scene(.bottomFront)) {
            HubOrnamentView()
        }
        .onAppear {
            if currentPageID == nil {
                currentPageID = allPages.first?.id
            }
        }
    }
}

private struct HubHeaderView: View {
    var body: some View {
        VStack(spacing: 4) {
            Text("Welcome to My Portfolio Hub!")
                .font(.extraLargeTitle).fontWeight(.semibold).shadow(radius: 3)
            Text("Viachaslau Hryniuk")
                .font(.title3).fontWeight(.medium).foregroundStyle(.primary)
            Text("iOS Developer & Spatial UI Enthusiast")
                .font(.title2).fontWeight(.regular).foregroundStyle(.secondary)
        }
        .padding(.top, 50)
        .padding(.bottom, 20)
    }
}

private struct PageViewHolder: View {
    let page: PageContent

    var body: some View {
        switch page {
        case .avatar:
            AvatarPageView()
        case .portfolioItem(let item):
            PortfolioItemView(item: item)
        }
    }
}


private struct HubOrnamentView: View {
    @Environment(\.openWindow) var openWindow

    var body: some View {
         HStack(spacing: 20) {
            Button { openWindow(id: WindowID.aboutCV) } label: { Label("About", systemImage: "person").font(.body) }
            Button { openWindow(id: WindowID.contact) } label: { Label("Contact", systemImage: "envelope").font(.body) }
        }
        .padding(.horizontal, 30)
        .padding(.vertical, 12)
        .background(.regularMaterial)
        .clipShape(Capsule())
    }
}

