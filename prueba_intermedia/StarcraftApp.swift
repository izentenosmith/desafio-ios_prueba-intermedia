//
//  prueba_intermediaApp.swift
//  prueba_intermedia
//
//  Created by Ignacio Zenteno on 14-12-24.
//

import SwiftUI

@main
struct StarcraftApp: App {
    @AppStorage("lastScreen") private var lastScreen: String = "login"
    @AppStorage("savedUsername") private var savedUsername: String = ""
    
    var body: some Scene {
        WindowGroup {
            if lastScreen == "login" || savedUsername.isEmpty {
                LoginView()
            } else {
                StarcraftView(viewModel: StarcraftViewModel(username: savedUsername))
            }
        }
    }
}
