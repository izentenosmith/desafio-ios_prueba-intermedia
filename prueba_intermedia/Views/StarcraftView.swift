//
//  StarcraftView.swift
//  prueba_intermedia
//
//  Created by Ignacio Zenteno on 14-12-24.
//

import SwiftUI

struct StarcraftView: View {
    @StateObject var viewModel: StarcraftViewModel
    @AppStorage("lastScreen") private var lastScreen: String = "login"
    @AppStorage("savedUsername") private var savedUsername: String = ""
    @State private var showingInfoModal = false

    var body: some View {
        NavigationStack {
            VStack(spacing: 0) {
                ScrollView {
                    VStack(spacing: 0) {
                        // About Section
                        AboutView(username: viewModel.username) // Pass the required username
                            .frame(maxWidth: .infinity)
                        
                        // Tabs Section
                        VStack(spacing: 0) {
                            ZStack {
                                // Background image based on selected tab
                                Image(viewModel.backgroundImageFor(tab: viewModel.selectedTab))
                                    .resizable()
                                    .scaledToFill()
                                    .frame(height: 800)
                                    .clipped()
                                    .overlay(
                                        LinearGradient(
                                            gradient: Gradient(colors: [.clear]),
                                            startPoint: .top,
                                            endPoint: .bottom
                                        )
                                    )
                                
                                VStack(spacing: 16) {
                                    // RACES title
                                    Text("RACES")
                                        .starcraftTitleStyle()
                                    
                                    // Tab Buttons
                                    HStack(spacing: 0) {
                                        ForEach(viewModel.raceNames, id: \.self) { raceName in
                                            TabButton(
                                                text: raceName,
                                                isSelected: viewModel.selectedTab == raceName,
                                                color: viewModel.tabColor(for: raceName)
                                            ) {
                                                withAnimation {
                                                    viewModel.selectedTab = raceName
                                                }
                                            }
                                        }
                                    }
                                    Spacer()
                                }
                                .padding(.top, 20)
                            }
                            
                            // Content based on selected tab
                            RaceTabView(race: viewModel.selectedRace)
                                .id(viewModel.selectedTab)
                        }
                    }
                }
            }
            .background(Color.black)
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                // Leading item (left side) - Back button
                ToolbarItem(placement: .navigationBarLeading) {
                    Button(action: {
                        lastScreen = "login"  // Update lastScreen before dismissing
                    }) {
                        Image(systemName: "chevron.left")
                            .foregroundColor(.white)
                    }
                }
                
                // Center item
                ToolbarItem(placement: .principal) {
                    Image("sc_icon")
                        .resizable()
                        .scaledToFit()
                        .frame(height: 30)
                }
                
                // Trailing item (right side)
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: {
                        showingInfoModal = true
                    }) {
                        Text("More info")
                            .foregroundColor(.white)
                            .font(.system(size: 16, weight: .medium))
                    }
                }
            }
            .toolbarBackground(.black, for: .navigationBar)
            .toolbarBackground(.visible, for: .navigationBar)
        }
        .sheet(isPresented: $showingInfoModal) {
            InfoModalView(username: viewModel.username)
                .presentationDetents([.medium, .large])
                .presentationDragIndicator(.visible)
                .edgesIgnoringSafeArea(.all)
        }
        .onAppear {
            lastScreen = "starcraft"
            savedUsername = viewModel.username
        }
    }
}