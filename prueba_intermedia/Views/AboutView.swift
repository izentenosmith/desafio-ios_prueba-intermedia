//
//  AboutView.swift
//  prueba_intermedia
//
//  Created by Ignacio Zenteno on 14-12-24.
//

import SwiftUI

struct AboutView: View {
    let username: String
    
    var body: some View {
        VStack(spacing: 15) {
            Text("Welcome, \(username)!")
                .starcraftTitleStyle()
            
            Text("ABOUT THIS APP")
                .starcraftTitleStyle()
            
            Text("This app helps you explore and learn about the three iconic races from StarCraft. Navigate through each race to discover their unique characteristics and units.")
                .starcraftTextStyle()
                .padding(.horizontal)
        }
        .padding()
    }
}