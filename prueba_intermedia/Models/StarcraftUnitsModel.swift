//
//  StarcraftUnitsModel.swift
//  prueba_intermedia
//
//  Created by Ignacio Zenteno on 14-12-24.
//

import SwiftUI

struct StarcraftUnit: Identifiable {
    let id = UUID()
    let name: String
    let type: String
    let description: String
    let minerals: String
    let gas: String
    let from: String
    let isHero: Bool
    let icon: String
}

struct StarcraftUnitsData {
    static let protoss: [StarcraftUnit] = [
        StarcraftUnit(
            name: "Probe", 
            type: "Ground", 
            description: "The Probe is the Protoss worker. It harvests Resources, has a low-powered ranged attack (with a range of one), and can build any Protoss building.", 
            minerals: "50",
            gas: "0",
            from: "Nexus",
            isHero: false,
            icon: "protoss_probe"
        ),
        StarcraftUnit(
            name: "Zealot", 
            type: "Ground", 
            description: "The Zealot is the Protoss first tier melee unit. Zealots only deal damage to ground units, so are vulnerable to air attack units. They are very robust attack unit with its 160 health and quite cost-effective with a cost of 100 Minerals.", 
            minerals: "100",
            gas: "0",
            from: "Gateway",
            isHero: false,
            icon: "protoss_zealot"
        ),
        StarcraftUnit(
            name: "Dragoon", 
            type: "Ground", 
            description: "The Dragoon is a ranged ground unit that can be warped in at the Protoss Gateway if a Cybernetics Core has been warped in. They are one of the most versatile units in the game.", 
            minerals: "125",
            gas: "50",
            from: "Gateway",
            isHero: false,
            icon: "protoss_dragoon"
        ),
        StarcraftUnit(
            name: "High Templar", 
            type: "Ground", 
            description: "The High Templar is a Protoss spell-caster unit. It is considered one of the most powerful non-attack units in the game due to its Psionic Storm.", 
            minerals: "50",
            gas: "150",
            from: "Gateway",
            isHero: false,
            icon: "protoss_ht"
        ),
        StarcraftUnit(
            name: "Dark Templar", 
            type: "Ground", 
            description: "The Dark Templar, commonly abbreviated as DT, is a permanently cloaked Protoss ground unit. It is built from the Gateway if there is an existing Templar Archives.", 
            minerals: "125",
            gas: "100",
            from: "Gateway",
            isHero: false,
            icon: "protoss_dt"
        ),
        StarcraftUnit(
            name: "Archon", 
            type: "Ground",     
            description: "The Archon is a powerful Protoss unit formed by merging two High Templar. The merge itself requires no tech, and can thus be made from extant High Templar if the Archives or Gateway are lost.", 
            minerals: "(100)",
            gas: "(300)",
            from: "Fusion",
            isHero: false,
            icon: "protoss_archon"
        ),
        StarcraftUnit(
            name: "Dark Archon", 
            type: "Ground", 
            description: "The Dark Archon is a Protoss spell-caster that does not have the ability to attack directly. Rather, it is a supporting Protoss unit that is capable of three powerful spells.", 
            minerals: "(250)",
            gas: "(200)",
            from: "Fusion",
            isHero: false,
            icon: "protoss_da"
        ),
        StarcraftUnit(
            name: "Observer", 
            type: "Air", 
            description: "The Observer is a permanently cloaked Protoss air unit that cannot attack. Its primary purpose is for scouting and Detection.", 
            minerals: "150",
            gas: "150",
            from: "Robotics Facility",
            isHero: false,
            icon: "protoss_observer"
        ),
        StarcraftUnit(
            name: "Shuttle", 
            type: "Air", 
            description: "The Shuttle is the Protoss's transport unit. It is slow at first, but its speed can be upgraded at the Robotics Support Bay.", 
            minerals: "200",
            gas: "200",
            from: "Robotics Facility",
            isHero: false,
            icon: "protoss_shuttle"
        ),
        StarcraftUnit(
            name: "Reaver", 
            type: "Ground", 
            description: "The Reaver is a Protoss ground siege unit produced from the Robotics Facility. Building it requires a Robotics Support Bay.", 
            minerals: "200",
            gas: "100",
            from: "Robotics Facility",
            isHero: false,
            icon: "protoss_reaver"
        ),
        StarcraftUnit(
            name: "Scout", 
            type: "Air", 
            description: "The Scout is a Protoss air unit that is produced from the Stargate. It is able to attack air and ground units, but uses different attacks for each, similar to a Goliath. The air attack consists of two explosive damage missiles, so enemy armor is counted twice for damage reduction. The ground attack deals normal damage and is much weaker in comparsion.", 
            minerals: "275",
            gas: "125",
            from: "Stargate",
            isHero: false,
            icon: "protoss_scout"
        ),
        StarcraftUnit(
            name: "Carrier", 
            type: "Air", 
            description: "The Carrier is a late-game Protoss air unit that is produced from the Stargate. Building it requires a Fleet Beacon. Carriers launch unique air units, Interceptors, which allow them to attack. Interceptors must be constructed individually, adding additional cost and build time. They are all destroyed if the Carrier itself is destroyed.", 
            minerals: "350",
            gas: "250",
            from: "Stargate",
            isHero: false,
            icon: "protoss_carrier"
        ),
        StarcraftUnit(
            name: "Arbiter", 
            type: "Air", 
            description: "The Arbiter is a late-game Protoss air unit that is produced from the Stargate. Building it requires an Arbiter Tribunal, which is unlocked from the Templar Archives, thus placing the Arbiter the very end of the Protoss tech tree.", 
            minerals: "100",
            gas: "350",
            from: "Stargate",
            isHero: false,
            icon: "protoss_arbiter"
        ),
        StarcraftUnit(
            name: "Corsair", 
            type: "Air", 
            description: "The Corsair is a Protoss air unit that is produced from the Stargate. It can only attack air units. The attack deals low explosive damage, but has a very short cooldown and deals splash damage. ", 
            minerals: "150",
            gas: "100",
            from: "Stargate",
            isHero: false,
            icon: "protoss_corsair"
        ),
        StarcraftUnit(
            name: "Tassadar (High Templar)", 
            type: "Ground",     
            description: "Unlike regular High Templars this hero unit has an attack of its own in addition to its special abilities. This unit cannot merge into an Archon but it retains its Psionic Storm and Hallucination abilities.", 
            minerals: "0",
            gas: "0",
            from: "Campaign",
            isHero: true,
            icon: "protoss_tassadar"
        ),
        StarcraftUnit(
            name: "Zeratul (Dark Templar)", 
            type: "Ground",     
            description: "Similar to the normal Dark Templar, Zeratul is permanently cloaked. He inflicts 100 damage from his melee attack, and has 60 health, 400 shield. Zeratul has the same movement speed as a zealot without leg enhancement upgraded.", 
            minerals: "0",
            gas: "0",
            from: "Campaign",
            isHero: true,
            icon: "protoss_zeratul"
        ),
        StarcraftUnit(
            name: "Tassadar (Carrier)", 
            type: "Air",     
            description: "Very powerful and well-armored carrier which is equipped with the Intereceptor Max upgrade. This carrier only appears in the final Protoss mission of Episode 3.", 
            minerals: "0",
            gas: "0",
            from: "Campaign",
            isHero: true,
            icon: "protoss_tassadar"
        ),
        StarcraftUnit(
            name: "Fenix (Zealot)", 
            type: "Ground",     
            description: "Very powerful Zealot with 240 shields and HP. Especially effective against Zerglings. Equipped with the Leg Enhancements upgrade.", 
            minerals: "0",
            gas: "0",
            from: "Campaign",
            isHero: true,
            icon: "protoss_fenix_zealot"
        ),
        StarcraftUnit(
            name: "Fenix (Dragoon)", 
            type: "Ground",     
            description: "In missions where this hero unit is usable, it is a super version of the normal Dragoon, this unit has an attack of 60 for all targets, is armed with 800 shields and health points, and has heavy armor.", 
            minerals: "0",
            gas: "0",
            from: "Campaign",
            isHero: true,
            icon: "protoss_fenix_dragoon"
        ),
        StarcraftUnit(
            name: "Mojo (Scout)", 
            type: "Air",     
            description: "A more powerful version of the Protoss Scout. Is rarely seen in gameplay, except in ENSLAVER Campaign game modes. A stalwart unit; utilize in wiping out enemy air units with Corsair/Scout backup. This unit is the strongest ATA unit in original game.", 
            minerals: "0",
            gas: "0",
            from: "Campaign",
            isHero: true,
            icon: "protoss_scout"
        )
    ]

    static let zerg: [StarcraftUnit] = [
        StarcraftUnit(
            name: "Larva",
            type: "Ground",
            description: "Zerg unit that automatically spawns on average every 342 frames (~14.4 seconds), directly below every Hatchery, Lair, and Hive, with a maximum of 3 Larvae at any one of these buildings.",
            minerals: "0",
            gas: "0",
            from: "Hatchery",
            isHero: false,
            icon: "zerg_larva"
        ),
        StarcraftUnit(
            name: "Drone",
            type: "Ground",
            description: "The Drone is the Zerg's first tier worker unit. It is used to gather resources and build structures.",
            minerals: "50",
            gas: "0",
            from: "Hatchery",
            isHero: false,
            icon: "zerg_drone"
        ),
        StarcraftUnit(
            name: "Zergling",
            type: "Ground",
            description: "The Zergling is the Zerg's first tier melee unit. It is very weak, but can be upgraded to a faster unit.",
            minerals: "50",
            gas: "0",
            from: "Hatchery",
            isHero: false,
            icon: "zerg_zergling"
        ),
        StarcraftUnit(
            name: "Hydralisk",
            type: "Ground",
            description: "The Hydralisk is an agile ranged unit for the Zerg that can attack both air and ground targets using needle spines. Hydralisks can be morphed from Larvae after building a Hydralisk Den.",
            minerals: "75",
            gas: "25",
            from: "Hatchery",
            isHero: false,
            icon: "zerg_hydralisk"
        ),
        StarcraftUnit(
            name: "Overlord",
            type: "Air",
            description: "The Overlord is a multi-purpose Zerg unit that provides the Zerg player with eight Control. It has a long sight range and is a detector. Zerg players start with one Overlord at the start of a game.",
            minerals: "100",
            gas: "0",
            from: "Hatchery",
            isHero: false,
            icon: "zerg_overlord"
        ),
        StarcraftUnit(
            name: "Lurker",
            type: "Ground",
            description: "The Lurker is a unique unit added in the Brood War expansion. It attacks while burrowed, dealing splash damage in a line. The Lurker Aspect, which requires Lair tech, must be researched at the Hydralisk Den. As such, the Lurker does not need the appropriate upgrade to Burrow.",
            minerals: "50 (125)",
            gas: "100 (125)",
            from: "Hydralisk",
            isHero: false,
            icon: "zerg_lurker"
        ),
        StarcraftUnit(
            name: "Mutalisk",
            type: "Air",
            description: "The Mutalisk is a fast moving air unit that requires a Spire and thus Lair-tech to be spawned. Its attack deals the same damage against ground units making it a potent harasser and its health and mobility makes it a match for other single-target air-to-air units and low masses of most ground-to-air units with Zerg's typical economy.",
            minerals: "100",
            gas: "100",
            from: "Lair",
            isHero: false,
            icon: "zerg_mutalisk"
        ),
        StarcraftUnit(
            name: "Scourge",
            type: "Air",
            description: "Scourge are suicidal Zerg anti-air units that require a Spire and thus Lair-tech to build. They serve as the Zerg primary airborne anti-air with Mutalisk. A pair of Scourge is spawned from a single morph of Larva, like Zerglings.",
            minerals: "25",
            gas: "75",
            from: "Lair",
            isHero: false,
            icon: "zerg_scourge"
        ),
        StarcraftUnit(
            name: "Queen",
            type: "Air",
            description: "The Queen is a fast Zerg air spellcaster unit. Morphing it requires a Queen's Nest which requires the Lair tech. The Queen functions as a support unit, as it itself has no direct attack ability.",
            minerals: "100",
            gas: "100",
            from: "Lair",
            isHero: false,
            icon: "zerg_queen"
        ),
        StarcraftUnit(
            name: "Ultralisk",
            type: "Ground",
            description: "The Ultralisk is a late-game Hive-tech unit that is only available once the Zerg player has an Ultralisk Cavern. It is very expensive costing 200 Vespene Gas, but has a great deal of health and its speed is still on par with Zerglings.",
            minerals: "200",
            gas: "200",
            from: "Hive",
            isHero: false,
            icon: "zerg_ultralisk"
        ),
        StarcraftUnit(
            name: "Defiler",
            type: "Air",
            description: "The Defiler is a Zerg Hive tech unit requiring the Defiler Mound and morphed from Larva. It is one of the Zerg's most powerful spellcasters. It is most well known for its Dark Swarm and Plague abilities, which affect many units at once with a single activation, and can greatly influence the outcome of any battle.",
            minerals: "50",
            gas: "150",
            from: "Hive",
            isHero: false,
            icon: "zerg_defiler"
        ),
        StarcraftUnit(
            name: "Guardian",
            type: "Air",
            description: "The Guardian is a Zerg Hive-tech flying siege unit. Guardians are morphed from Mutalisks, via the Cocoon, after the required Greater Spire structure has been constructed. Mutalisks can also morph into Devourers. The Guardian is very slow moving, but its power lies in its long attack range.",
            minerals: "50 (150)",
            gas: "100 (200)",
            from: "Mutalisk",
            isHero: false,
            icon: "zerg_guardian"
        ),
        StarcraftUnit(
            name: "Devourer",
            type: "Air",
            description: "The Devourer is a rarely-seen Hive-tech air-to-air unit that requires a Greater Spire to morph from a Mutalisk. As an expensive, powerful anti-air support unit, it rarely fits the meta; Zerg rarely tech up and pursue air superiority.",
            minerals: "150 (250)",
            gas: "50 (150)",
            from: "Mutalisk",
            isHero: false,
            icon: "zerg_devourer"
        ),
        StarcraftUnit(
            name: "Infested Terran",
            type: "Ground",
            description: "The Infested Terran is a rarely-used Zerg suicide unit produced from the Infested Command Center, which is created by Queens from damaged Command Centers.",
            minerals: "100",
            gas: "50",
            from: "Infested Command Center",
            isHero: false,
            icon: "zerg_infested_terran"
        ),
        StarcraftUnit(
            name: "Broodling",
            type: "Ground",
            description: "The Broodling is a small Zerg unit spawned when a Queen casts Spawn Broodling on a target. Two Broodlings spawn per spell cast. Upon their creation, they have a fixed amount of energy that represents their life span.",
            minerals: "0",
            gas: "0",
            from: "Queen",
            isHero: false,
            icon: "zerg_broodling"
        ),
        StarcraftUnit(
            name: "Hunter Killer (Hydralisk)",
            type: "Ground",
            description: "Basically a super powered version of the Hydralisk. These units have an attack of 20, a health of 160 and they move pretty fast. Large numbers of these units will defeat an entire army of Protoss and Terrans, so focus on destroying the Hunter Killers if the enemy has one.",
            minerals: "0",
            gas: "0",
            from: "Campaign",
            isHero: true,
            icon: "zerg_hunter_killer"
        ),
        StarcraftUnit(
            name: "Kerrigan (Infested Terran)",
            type: "Ground",
            description: "Unlike normal Infested Terrans, this unit is a powerful melee attacker instead of a suicide one. This unit has the ensnare special ability, the consume special ability, the Ghosts Personal Cloaking ability and the High Templars Psionic Storm ability, making this unit very versatile and powerful against certain enemies.",
            minerals: "0",
            gas: "0",
            from: "Campaign",
            isHero: true,
            icon: "zerg_kerrigan"
        ),
        StarcraftUnit(
            name: "Devouring One (Zergling)",
            type: "Ground",
            description: "A super powered up version of the Zergling. This attacker does 10 points of damage, can survive more hits than a regular Zergling and is already upgraded with all upgrades available.",
            minerals: "0",
            gas: "0",
            from: "Campaign",
            isHero: true,
            icon: "zerg_zergling"
        ),
        StarcraftUnit(
            name: "Torrasque (Ultralisk)",
            type: "Ground",
            description: "This hero is basically a super version of the Ultralisk. Its attack does 50 points of damage to any ground unit, has a health of 800 and it has tough armor to shrug off most attacks. This Ultralisk should be the first target on your list, because it will wreak havoc on your forces if left alone.",
            minerals: "0",
            gas: "0",
            from: "Campaign",
            isHero: true,
            icon: "zerg_ultralisk"
        ),
        StarcraftUnit(
            name: "Matriarch (Queen)",
            type: "Air",
            description: "This hero is basically a super version of the Queen with higher stats and more energy.",
            minerals: "0",
            gas: "0",
            from: "Campaign",
            isHero: true,
            icon: "zerg_queen"
        ),
    ]

    static let terran: [StarcraftUnit] = [
        StarcraftUnit(
            name: "SCV",
            type: "Ground",
            description: "The SCV (Space Construction Vehicle) is the Terran worker unit. It harvests resources, constructs buildings and can repair all Terran mechanical units and buildings.",
            minerals: "50",
            gas: "0",
            from: "Command Center",
            isHero: false,
            icon: "terran_scv"
        ),
        StarcraftUnit(
            name: "Marine",
            type: "Ground",
            description: "The Marine is the base Terran combat unit. It deals 6 normal damage to both air and ground targets. When upgraded with Stim Packs, it can sacrifice 10 hit points in order to double its rate of fire and increase move speed, and the U-238 Shells upgrade increases its range.",
            minerals: "50",
            gas: "0",
            from: "Barracks",
            isHero: false,
            icon: "terran_marine"
        ),
        StarcraftUnit(
            name: "Firebat",
            type: "Ground",
            description: "The Firebat is a Terran infantry unit that is produced from the Barracks. Building it requires an Academy. Its main attack is a ground-only flamethrower that consists of three small radial splash attacks in a line, each dealing 8 concussive damage at stock.",
            minerals: "50",
            gas: "25",
            from: "Barracks",
            isHero: false,
            icon: "terran_firebat"
        ),
        StarcraftUnit(
            name: "Medic",
            type: "Ground",
            description: "The Medic is a biological Terran unit produced from the Barracks with an Academy built which has its primary function healing friendly biological units.",
            minerals: "50",
            gas: "25",
            from: "Barracks",
            isHero: false,
            icon: "terran_medic"
        ),
        StarcraftUnit(
            name: "Ghost",
            type: "Ground",
            description: "The Ghost is a specialised infantry-type spellcaster unit built from the Barracks once an Academy and Science Facility with an attached Covert Ops have been constructed. The Ghost has a long ranged attack that deals 10 concussive damage at a rapid rate, but its real power lies in its special abilities. Ghosts are able to cloak, use Lockdown grenades, and direct nukes to their target.",
            minerals: "25",
            gas: "75",
            from: "Barracks",
            isHero: false,
            icon: "terran_ghost"
        ),
        StarcraftUnit(
            name: "Vulture",
            type: "Ground",
            description: "The Vulture is an extremely mobile and dangerous Terran unit produced from the Factory. Vultures are the epitome of cost-efficiency; properly microed, they can take down an unlimited number of some units and Spider Mines give them further unique potential cost-efficiency.",
            minerals: "75",
            gas: "0",
            from: "Factory",
            isHero: false,
            icon: "terran_vulture"
        ),
        StarcraftUnit(
            name: "Siege Tank",
            type: "Ground",
            description: "The Siege Tank, or simply Tank, is a Terran mechanical unit. Tanks are built from the Factory once it has an attached Machine Shop. The Siege Tank has two modes of attack: Tank Mode and Siege Mode. Siege Mode must be first researched at the Machine Shop. Both modes are only capable of damaging land units.",
            minerals: "150",
            gas: "100",
            from: "Factory",
            isHero: false,
            icon: "terran_siege_tank"
        ),
        StarcraftUnit(
            name: "Goliath",
            type: "Ground",
            description: "The Goliath is a Terran unit that is constructed by a Factory after the construction of an Armory. Although the Machine Shop add-on is not necessary for the Goliath to be built, the attachment is necessary to gain access to some vital upgrades. The Goliath is most useful for its powerful anti-air attack, although it can attack both air and ground targets.",
            minerals: "100",
            gas: "50",
            from: "Factory",
            isHero: false,
            icon: "terran_goliath"
        ),
        StarcraftUnit(
            name: "Wraith",
            type: "Air",
            description: "The Wraith is the initial Terran air unit which can be built from the Starport without any addons. It deals 8 normal damage against ground units, and 20 explosive damage against air units. It can be upgraded with Cloak, which renders it invisible.",
            minerals: "150",
            gas: "100",
            from: "Starport",
            isHero: false,
            icon: "terran_wraith"
        ),
        StarcraftUnit(
            name: "Dropship",
            type: "Air",
            description: "The Dropship is the Terran air transport unit. It is made from a Starport with the Control Tower add-on. It deals no attack and its Ship Armor can be upgraded at the Armory. It has no abilities that can be researched.",
            minerals: "100",
            gas: "100",
            from: "Starport",
            isHero: false,
            icon: "terran_dropship"
        ),
        StarcraftUnit(
            name: "Science Vessel",
            type: "Air",
            description: "The Science Vessel is an airborne detector caster unit. In the Terran army, it generally serves a support role. The Science Vessel is produced at the Starport with Control Tower add-on and it requires a pre-existing Science Facility.",
            minerals: "100",
            gas: "225",
            from: "Starport",
            isHero: false,
            icon: "terran_science_vessel"
        ),
        StarcraftUnit(
            name: "Battlecruiser",
            type: "Air",
            description: "The Battlecruiser (Commonly abbreviated as BC) is one of the strongest air units in the game and perhaps the strongest unit in the Terran arsenal. However, its cost, build time, and high supply requirement (6) makes sure that it is also one of the lesser used units in competitive StarCraft.",
            minerals: "400",
            gas: "300",
            from: "Starport",
            isHero: false,
            icon: "terran_battlecruiser"
        ),
        StarcraftUnit(
            name: "Valkyrie",
            type: "Air",
            description: "The Valkyrie is a Terran air-to-air unit. The Valkyrie is produced at a Starport with a Control Tower add-on and requires an Armory on the field. Valkyries employ an air-to-air attack that issues a volley of eight small missiles at its target.",
            minerals: "250",
            gas: "125",
            from: "Starport",
            isHero: false,
            icon: "terran_valkyrie"
        ),
        StarcraftUnit(
            name: "Jim Raynor (Marine)",
            type: "Ground",
            description: "This is an excellent infantry unit, having five times more HP than a normal Marine. He is playable in one campaign mission and of course available for Campaign Editor.",
            minerals: "0",
            gas: "0",
            from: "Campaign",
            isHero: true,
            icon: "terran_jim_raynor"
        ),
        StarcraftUnit(
            name: "Jim Raynor (Vulture)",
            type: "Ground",
            description: "Still a great unit, but its weakness is that it's a Vulture: it can't attack air units! Very good at hit-and-run missions and disrupting enemy resource gathering. He is playable in five Terran missions and one Protoss mission.",
            minerals: "0",
            gas: "0",
            from: "Campaign",
            isHero: true,
            icon: "terran_jim_raynor"
        ),
        StarcraftUnit(
            name: "Gui Montag (Firebat)",
            type: "Ground",
            description: "Simply an enhanced Firebat. This unit is good for using Stimpacks with because of its high HP, and deals a lot of damage. Available for Campaign Editor only.",
            minerals: "0",
            gas: "0",
            from: "Campaign",
            isHero: true,
            icon: "terran_firebat"
        ),
        StarcraftUnit(
            name: "Sarah Kerrigan (Ghost)",
            type: "Ground",
            description: "She is one of the main characters of the game, and her playable Terran version is a Ghost. While she does not have one of the abilities of normal Ghosts (Nuclear Strike), she is still a great unit with the abilities to Cloak and Lockdown enemy units, and enough energy to do them many times over.",
            minerals: "0",
            gas: "0",
            from: "Campaign",
            isHero: true,
            icon: "terran_kerrigan"
        ),
        StarcraftUnit(
            name: "Hyperion (Battlecruiser)",
            type: "Air",
            description: "Probably one of the best hero units in the game. This thing possesses superior firepower compared with normal Battlecruisers, has high health points, heavy armor and is armed with the Yamato Gun special ability.",
            minerals: "0",
            gas: "0",
            from: "Campaign",
            isHero: true,
            icon: "terran_jim_raynor"
        ),
        StarcraftUnit(
            name: "Norad II (Battlecruiser)",
            type: "Ground",
            description: "Like the Hyperion, this Battlecruiser is perhaps the most versatile Hero in the game. Armed with an attack of 50, health of 700 and a Yamato Cannon, this unit is a strong ship compared to the Hyperion.",
            minerals: "0",
            gas: "0",
            from: "Campaign",
            isHero: true,
            icon: "terran_norad"
        ),
        StarcraftUnit(
            name: "Norad III (Battlecruiser)",
            type: "Ground",
            description: "This unit has an armor of 5, attack power of 50 and health points of 1500, allowing it to devastate any enemy that stands in its way. This hero unit can only be found in True Colors of the Zerg Campaign.",
            minerals: "0",
            gas: "0",
            from: "Campaign",
            isHero: true,
            icon: "terran_norad"
        ),
    ]
}
