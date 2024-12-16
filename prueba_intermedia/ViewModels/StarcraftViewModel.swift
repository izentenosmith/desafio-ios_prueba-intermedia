//
//  StarcraftViewModel.swift
//  prueba_intermedia
//
//  Created by Ignacio Zenteno on 14-12-24.
//

import SwiftUI

class StarcraftViewModel: ObservableObject {
    let username: String
    @Published var selectedTab: String
    
    // Get race names from the model
    let raceNames: [String] = [
        StarcraftRaceData.protoss.name,
        StarcraftRaceData.zerg.name,
        StarcraftRaceData.terran.name
    ]
    
    var selectedRace: StarcraftRace {
        switch selectedTab {
        case StarcraftRaceData.protoss.name:
            return StarcraftRaceData.protoss
        case StarcraftRaceData.zerg.name:
            return StarcraftRaceData.zerg
        case StarcraftRaceData.terran.name:
            return StarcraftRaceData.terran
        default:
            return StarcraftRaceData.protoss
        }
    }
    
    init(username: String) {
        self.username = username
        self.selectedTab = StarcraftRaceData.protoss.name
    }
    
    // Move color and background image logic from view to ViewModel
    func backgroundImageFor(tab: String) -> String {
        switch tab {
        case StarcraftRaceData.protoss.name:
            return "protoss_bg"
        case StarcraftRaceData.zerg.name:
            return "zerg_bg"
        case StarcraftRaceData.terran.name:
            return "terran_bg"
        default:
            return "protoss_bg"
        }
    }
    
    func tabColor(for tab: String) -> Color {
        switch tab {
        case StarcraftRaceData.protoss.name:
            return Color("SCProtossGold")
        case StarcraftRaceData.zerg.name:
            return Color("SCZergPurple")
        case StarcraftRaceData.terran.name:
            return Color("SCTerranBlue")
        default:
            return .blue
        }
    }
}