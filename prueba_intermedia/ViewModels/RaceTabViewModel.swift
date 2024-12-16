//
//  RaceTabViewModel.swift
//  prueba_intermedia
//
//  Created by Ignacio Zenteno on 15-12-24.
//

import SwiftUI

class RaceTabViewModel: ObservableObject {
    let race: StarcraftRace
    
    init(race: StarcraftRace) {
        self.race = race
    }
    
    var raceColor: Color {
        switch race.name {
        case "Protoss":
            return Color("SCProtossGold")
        case "Zerg":
            return Color("SCZergPurple")
        case "Terran":
            return Color("SCTerranBlue")
        default:
            return .white
        }
    }
    
    var raceIcon: String {
        switch race.name {
        case "Protoss":
            return "shield.fill"
        case "Zerg":
            return "ant.fill"
        case "Terran":
            return "gear"
        default:
            return "questionmark"
        }
    }
}