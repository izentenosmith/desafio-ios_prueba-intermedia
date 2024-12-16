//
//  RaceTabView.swift
//  prueba_intermedia
//
//  Created by Ignacio Zenteno on 15-12-24.
//

import SwiftUI

struct RaceTabView: View {
    @StateObject private var viewModel: RaceTabViewModel
    
    init(race: StarcraftRace) {
        _viewModel = StateObject(wrappedValue: RaceTabViewModel(race: race))
    }
    
    var body: some View {
        VStack(spacing: 0) {
            // Race Image and Description
            ZStack {
                VStack {
                    Spacer()
                    VStack(spacing: 10) {
                        Text(viewModel.race.name.uppercased())
                            .font(.system(.title, design: .monospaced))
                            .fontWeight(.bold)
                            .foregroundColor(viewModel.raceColor)
                        
                        Text(viewModel.race.description)
                            .font(.system(.subheadline, design: .monospaced))
                            .foregroundColor(.white)
                            .multilineTextAlignment(.center)
                            .padding(.horizontal)
                    }
                    .padding()
                    .background(
                        LinearGradient(
                            gradient: Gradient(colors: [.clear, .black.opacity(0.8)]),
                            startPoint: .top,
                            endPoint: .bottom
                        )
                    )
                }
            }
            
            // Units List
            ScrollView {
                VStack(spacing: 1) {
                    ForEach(viewModel.race.units) { unit in
                        VStack(alignment: .leading, spacing: 8) {
                            HStack(alignment: .top, spacing: 16) {
                                // Left side: Unit info
                                VStack(alignment: .leading, spacing: 4) {
                                    // Name
                                    HStack {
                                        Image(systemName: viewModel.raceIcon)
                                            .foregroundColor(viewModel.raceColor)
                                        Text(unit.name)
                                            .font(.headline)
                                            .foregroundColor(.white)
                                    }
                                    
                                    // Type
                                    HStack {
                                        Text("Type:")
                                            .foregroundColor(.gray)
                                        Text(unit.type)
                                            .foregroundColor(.white)
                                    }
                                    
                                    // Cost
                                    HStack {
                                        Text("Cost:")
                                            .foregroundColor(.gray)
                                        Image(systemName: "diamond.fill")
                                            .foregroundColor(.blue)
                                        Text(unit.minerals)
                                            .foregroundColor(.white)
                                        Image(systemName: "bolt.fill")
                                            .foregroundColor(.green)
                                        Text(unit.gas)
                                            .foregroundColor(.white)
                                    }
                                    
                                    // From
                                    HStack {
                                        Text("From:")
                                            .foregroundColor(.gray)
                                        Text(unit.from)
                                            .foregroundColor(.white)
                                    }
                                }
                                
                                // Right side: Unit image
                                Spacer()
                                Image(unit.icon)
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 100, height: 100)
                                    .background(Color.black.opacity(0.3))
                                    .cornerRadius(8)
                            }
                            
                            // Description
                            Text(unit.description)
                                .font(.subheadline)
                                .foregroundColor(.gray)
                                .padding(.top, 4)
                            
                            Divider()
                                .background(Color.gray)
                        }
                        .padding()
                        .background(Color.black.opacity(0.8))
                    }
                }
            }
            .background(Color.black.opacity(0.6))
        }
    }
}