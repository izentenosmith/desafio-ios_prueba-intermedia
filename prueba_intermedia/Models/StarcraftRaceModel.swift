//
//  StarcraftRaceModel.swift
//  prueba_intermedia
//
//  Created by Ignacio Zenteno on 14-12-24.
//

import SwiftUI

struct StarcraftRace: Identifiable {
    let id = UUID()
    let name: String
    let description: String
    let units: [StarcraftUnit]
}

struct StarcraftRaceData {
    static let protoss = StarcraftRace(
        name: "Protoss", 
        description: "Ancient, noble warriors with a golden armada and advanced psionic technology. For thousands of years, the ancient and mysterious protoss have held sway over their part of the galaxy.", 
        units: StarcraftUnitsData.protoss
    )

    static let zerg = StarcraftRace(
        name: "Zerg", 
        description: "The Zerg infest entire planets, consuming everything in their path. Yet behind their animal cunning lurks a sinister intelligence, pushing the creatures against the constraints of their genetics—and towards evolution…", 
        units: StarcraftUnitsData.zerg
    )

    static let terran = StarcraftRace(
        name: "Terran", 
        description: "The Terrans are intrepid colonists, generations removed from Earth and governed by a failing Confederacy. They are a warlike race, and their society is built around the military.", 
        units: StarcraftUnitsData.terran
    )
}


