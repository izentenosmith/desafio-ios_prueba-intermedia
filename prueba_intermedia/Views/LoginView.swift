//
//  LoginView.swift
//  prueba_intermedia
//
//  Created by Ignacio Zenteno on 14-12-24.
//

import SwiftUI

struct LoginView: View {
    @StateObject private var viewModel = LoginViewModel()
    @State private var isNavigating: Bool = false
    @AppStorage("lastScreen") private var lastScreen: String = "login"
    @AppStorage("savedUsername") private var savedUsername: String = ""

    var body: some View {
        NavigationStack {
            ZStack {
                Image("main_bg")
                    .resizable()
                    .ignoresSafeArea()
                
                VStack {
                    Spacer()
                    
                    Text("Welcome!")
                        .starcraftTitleStyle()
                    
                    VStack(spacing: 20) {
                        TextField("Enter your name or alias", text: $viewModel.username)
                            .starcraftTextFieldStyle()
                            .padding(.top, 20)

                        Button(action: {
                            if !viewModel.username.isEmpty {
                                savedUsername = viewModel.username
                                lastScreen = "starcraft"
                                isNavigating = true
                            }
                        }) {
                            Text("CONTINUE")
                                .starcraftButtonStyle()
                        }
                        .navigationDestination(isPresented: $isNavigating) {
                            StarcraftView(viewModel: StarcraftViewModel(username: viewModel.username))
                                .toolbarBackground(.black, for: .navigationBar)
                                .toolbarBackground(.visible, for: .navigationBar)
                                .toolbarColorScheme(.dark, for: .navigationBar)
                        }
                    }
                    .padding()
                }
                .padding(.bottom, 50)
            }
        }
        .onAppear {
            // If there's a saved username, pre-fill it
            if !savedUsername.isEmpty && lastScreen == "login" {
                viewModel.username = savedUsername
            }
        }
    }
}