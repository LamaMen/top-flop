//
//  PlayerNumbersStorage.swift
//  top-flop
//
//  Created by Илья Родионов on 26.11.2022.
//

import Foundation


class PlayerNumberStorage {
    static func getPlayerNumber(player: Int) -> Int {
        let number = UserDefaults.standard.integer(forKey: "player\(player)")
        return number
    }
    
    static func setPlayerNumber(player: Int, number: Int) {
        let defaults = UserDefaults.standard
        let key = "player\(player)"
        
        defaults.set(number, forKey: key)
    }
}
