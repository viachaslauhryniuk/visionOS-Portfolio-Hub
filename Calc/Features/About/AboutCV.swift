//
//  About:CV.swift
//  Calc
//
//  Created by Viachaslau Hryniuk on 11/04/2025.
//

import SwiftUI

struct AboutCV: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 30) {
                AboutHeaderView()
                
                SectionView(title: "About Me") {
                    Text("Passionate iOS Developer with a strong Informatics background. Proficient in Swift, UIKit & SwiftUI, focusing on high-performance, intuitive mobile and spatial experiences. Experienced in Agile development, TDD, and building robust applications.")
                        .foregroundStyle(.secondary)
                }
                
                SectionView(title: "Key Skills") {
                    SkillTags(skills: [
                        "Swift", "SwiftUI", "UIKit", "RealityKit",
                        "MVVM/MVC", "Combine/AsyncAwait",
                        "Firebase", "Core Data", "API Integration (REST)",
                        "Git", "SPM/CocoaPods", "XCTest/Swift Testing", "Agile", "TDD"
                                      ])
                }
                
                SectionView(title: "Experience Highlight") {
                    VStack(alignment: .leading, spacing: 15) {
                        ExperienceItemSimple(
                            role: "Swift AI Trainer",
                            company: "ScaleAI",
                            period: "Aug 2024 - Present"
                        )
                        ExperienceItemSimple(
                            role: "iOS Developer",
                            company: "Andersen Lab / NDA Bank Project",
                            period: "Sep 2023 - Dec 2023"
                        )
                    }
                }
                
                SectionView(title: "Education") {
                    ExperienceItemSimple(
                        role: "B.Sc. Informatics",
                        company: "Lodz University Of Technology",
                        period: "2021 - Present"
                    )
                }
                
                SectionView(title: "Languages") {
                    HStack(spacing: 15) {
                        LanguageBadge(language: "English", level: "C1")
                        LanguageBadge(language: "Polish", level: "B2")
                        LanguageBadge(language: "Russian", level: "Native")
                    }
                }
            }
            .padding(30)
        }
        .navigationTitle("About Me")
        .glassBackgroundEffect()
    }
}

private struct AboutHeaderView: View {

    var body: some View {
        HStack(alignment: .center, spacing: 20) {
            Image("Ava2")
                .resizable()
                .scaledToFit()
                .frame(width: 100, height: 100)
                .clipShape(Circle())
                .padding(.trailing, 5)
            
            VStack(alignment: .leading, spacing: 8) {
                Text("Viachaslau Hryniuk")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                Text("iOS Developer")
                    .font(.title2)
                    .foregroundStyle(.secondary)
            }
        }
    }
}

