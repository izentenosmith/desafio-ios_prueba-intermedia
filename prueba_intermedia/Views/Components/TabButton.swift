//
//  TabButton.swift
//  prueba_intermedia
//
//  Created by Ignacio Zenteno on 15-12-24.
//

import SwiftUI

struct TabButton: View {
    let text: String
    let isSelected: Bool
    let color: Color
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            VStack(spacing: 4) {
                Text(text)
                    .font(.system(.headline, design: .monospaced))
                    .fontWeight(isSelected ? .bold : .regular)
                    .foregroundColor(isSelected ? color : .gray)
                    .padding(.horizontal)
                    .padding(.vertical, 8)
                
                Rectangle()
                    .fill(isSelected ? color : Color.clear)
                    .frame(height: 3)
                    .animation(.easeInOut(duration: 0.3), value: isSelected)
            }
        }
        .frame(maxWidth: .infinity)
        .background(Color.black.opacity(0.1))
    }
}