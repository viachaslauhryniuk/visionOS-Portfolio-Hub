# visionOS Portfolio Hub

A personal portfolio application built natively for Apple Vision Pro using SwiftUI. This app showcases spatial UI concepts and presents professional information in an interactive format designed for visionOS.

## Showcase Video

[![Portfolio Showcase](placeholder.jpg)](https://vimeo.com/1075860453/7ae129af4d?ts=0&share=copy)

## Technologies Used

*   **Platform:** visionOS 1.0+
*   **UI Framework:** SwiftUI
*   **Language:** Swift

## Setup & Running

1.  Clone this repository: `git clone <your-repo-url>`
2.  Open the `Calc.xcodeproj` file in Xcode (version 15.2 or later recommended).
3.  Ensure you have the visionOS SDK installed via Xcode.
4.  Select a visionOS Simulator (or a connected Apple Vision Pro device).
5.  Build and run (Cmd+R).

## Project Structure

The project follows a component-based architecture, separating features and reusable elements:

🗂️ **YourPortfolioApp/**
┣ 📄 YourPortfolioAppApp.swift       *# App Entry Point*
┃
┣ 📂 **App/**                      *# Core App Configuration*
┃   ┗ 📄 WindowIdentifiers.swift   *# Defines Window IDs*
┃
┣ 📂 **Data/**                     *# Data Models & Sources*
┃   ┣ 📄 PortfolioItem.swift       *# PortfolioItem model*
┃   ┣ 📄 PageContent.swift         *# PageContent enum*
┃   ┗ 📄 PortfolioData.swift       *# Source of portfolio items data*
┃
┣ 📂 **Features/**                 *# Main sections of the app*
┃   ┣ 📂 Hub/                      *# Main Hub screen and its subviews*
┃   ┣ 📂 About/                    *# About Me screen and its subviews*
┃   ┗ 📂 Contact/                  *# Contact screen and its subviews*
┃
┣ 📂 **Utilities/**                *# Shared helper views/logic (e.g., FlowLayout)*
┃
┗ 🖼️ Assets.xcassets               *# Image assets*
