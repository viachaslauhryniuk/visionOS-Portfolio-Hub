import SwiftUI

struct AvatarPageView: View {
    let avatarImageName = "Ava" 
    @State private var isAnimating: Bool = false

    var body: some View {
        VStack {
            Spacer()
            Image(avatarImageName)
                .resizable()
                .scaledToFit()
                .frame(width: 400, height: 400)
                .shadow(radius: 10)
                .scaleEffect(isAnimating ? 1.03 : 1.0)
                .animation(Animation.easeInOut(duration: 2.0).repeatForever(autoreverses: true), value: isAnimating)
                .onAppear {

                    Task {
                        try? await Task.sleep(for: .milliseconds(200))
                        await MainActor.run {
                            self.isAnimating = true
                        }
                    }
                }
            Spacer()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

