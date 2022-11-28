//
//  ScoreStorage.swift
//  top-flop
//
//  Created by Илья Родионов on 28.11.2022.
//

import Foundation
final class ScoreStorage{

    private enum ScoreKeys: String{
        case score
    }

    static var score: Int! {
        get{
            let saved = UserDefaults.standard.integer(forKey: ScoreKeys.score.rawValue)
            return saved != 0 ? saved : 0
        }
        set{
            let defaults = UserDefaults.standard
            let key = ScoreKeys.score.rawValue
            
            if let score = newValue {
                defaults.set(score, forKey: key)
            } else{
                defaults.removeObject(forKey: key)
            }
        }
    }
}

