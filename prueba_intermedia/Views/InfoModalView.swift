//
//  InfoModalView.swift
//  prueba_intermedia
//
//  Created by Ignacio Zenteno on 14-12-24.
//

import SwiftUI

struct InfoModalView: View {
    let username: String
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(spacing: 0) {
                    // Background image with title and StarCraft content at center
                    ZStack(alignment: .center) {
                        Image("starcraft_bg")
                            .resizable()
                            .scaledToFill()
                            .frame(height: 400)
                            .clipped()
                            .overlay(
                                LinearGradient(
                                    gradient: Gradient(colors: [.clear, .black.opacity(0.8)]),
                                    startPoint: .top,
                                    endPoint: .bottom
                                )
                            )
                        
                        VStack(spacing: 15) {
                            Text("ABOUT STARCRAFT")
                                .starcraftTitleStyle()
                            
                            Text("StarCraft is a legendary real-time strategy game developed by Blizzard Entertainment. Released in 1998, it revolutionized the RTS genre and became one of the most influential esports games ever created.")
                                .starcraftTextStyle()
                                .multilineTextAlignment(.center)
                                .frame(maxWidth: .infinity)
                        }
                        .padding(.horizontal, 40)
                    }
                    
                    // Developer content
                    VStack(spacing: 20) {
                        Text("ABOUT THE DEVELOPER")
                            .starcraftTitleStyle()
                        
                        Text("This app was created by Ignacio Zenteno, a software developer passionate about gaming and technology. Built with SwiftUI as a tribute to one of the most iconic strategy games of all time.")
                            .starcraftTextStyle()
                            .multilineTextAlignment(.center)
                            .frame(maxWidth: .infinity)
                            .padding(.horizontal, 40)
                    }
                    .padding(.vertical, 40)
                }
            }
            .background(Color.black)
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: {
                        dismiss()
                    }) {
                        Image(systemName: "xmark")
                            .foregroundColor(.white)
                    }
                }
            }
        }
    }
}