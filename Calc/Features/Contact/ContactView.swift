//
//  ContactView.swift
//  Calc
//
//  Created by Viachaslau Hryniuk on 16/04/2025.
//

import SwiftUI

struct ContactView: View {
    private let facebookURL = URL(string: "https://www.facebook.com/profile.php?id=100073705802964")!
    private let linkedInURL = URL(string: "https://www.linkedin.com/in/viachaslau-hryniuk-717368289/")!
    private let gitHubURL = URL(string: "https://github.com/viachaslauhryniuk")!

    var body: some View {
        NavigationStack {
            VStack(alignment: .center, spacing: 20) {
                Text("Get in Touch")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                
                
                Text("Feel free to reach out via Facebook or connect on LinkedIn / GitHub.")
                    .font(.body)
                    .foregroundStyle(.secondary)
                    .padding(.bottom, 12)
                
                
                VStack(spacing: 10) {
                    
                    Link(destination: facebookURL) {
                        ContactButtonContent(icon: "Facebook", label: "Facebook Profile")
                    }
                    .buttonStyle(.plain)
                    
                    Link(destination: linkedInURL) {
                        ContactButtonContent(icon: "LinkedIn", label: "LinkedIn Profile")
                    }
                    .buttonStyle(.plain)
                    
                    
                    Link(destination: gitHubURL) {
                        ContactButtonContent(icon: "Github", label: "GitHub Profile")
                    }
                    .buttonStyle(.plain)
                    
                }
                
            }
            .padding(.horizontal, 20)

        }
        .glassBackgroundEffect()
    }
}
