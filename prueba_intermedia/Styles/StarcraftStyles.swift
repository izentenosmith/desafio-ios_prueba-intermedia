//
//  StarcraftStyles.swift
//  prueba_intermedia
//
//  Created by Ignacio Zenteno on 14-12-24.
//

import SwiftUI

// Text Modifiers
struct StarcraftTitleModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.system(.title, design: .monospaced))
            .fontWeight(.bold)
            .foregroundColor(.white)
            .shadow(color: Color("SCTerranBlue"), radius: 10, x: 0, y: 0)
    }
}

struct StarcraftTextModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.system(.body, design: .monospaced))
            .foregroundColor(.white)
            .multilineTextAlignment(.center)
    }
}

struct StarcraftTextFieldModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.system(.body, design: .monospaced))
            .padding()
            .background(Color.black.opacity(0.6))
            .cornerRadius(8)
            .foregroundColor(.white)
    }
}

// Button Modifiers
struct StarcraftButtonModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.system(.headline, design: .monospaced))
            .foregroundColor(.white)
            .padding()
            .frame(maxWidth: .infinity)
            .background(
                LinearGradient(
                    gradient: Gradient(colors: [Color("SCTerranBlue"),
                                             Color("SCTerranBlue").opacity(0.7)]),
                    startPoint: .top,
                    endPoint: .bottom
                )
            )
            .cornerRadius(8)
            .overlay(
                RoundedRectangle(cornerRadius: 8)
                    .stroke(Color("SCProtossGold").opacity(0.8), lineWidth: 2)
            )
            .shadow(color: Color("SCTerranBlue"), radius: 5)
    }
}

// View Extensions
extension View {
    func starcraftTitleStyle() -> some View {
        modifier(StarcraftTitleModifier())
    }
    
    func starcraftTextStyle() -> some View {
        modifier(StarcraftTextModifier())
    }
    
    func starcraftTextFieldStyle() -> some View {
        modifier(StarcraftTextFieldModifier())
    }
    
    func starcraftButtonStyle() -> some View {
        modifier(StarcraftButtonModifier())
    }
}

// Gradient Styles
struct StarcraftGradientOverlay: ViewModifier {
    func body(content: Content) -> some View {
        content
            .overlay(
                LinearGradient(
                    gradient: Gradient(colors: [.clear, .black.opacity(0.8)]),
                    startPoint: .top,
                    endPoint: .bottom
                )
            )
    }
}

extension View {
    func starcraftGradientOverlay() -> some View {
        modifier(StarcraftGradientOverlay())
    }
}