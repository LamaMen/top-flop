//
//  GameSetting.swift
//  top-flop
//
//  Created by Илья Родионов on 26.11.2022.
//

import Foundation

/// Модель данных, представляющая настроки
///
/// Хранит два значения:
/// * Количество игроков
/// * Время на один раунд
class GameSetting {
    /// Количество игроков
    var playersCount: Int
    
    /// Время на раунд
    var time: Int
    
    /// Конструктор с дефолтными настройками
    init() {
        playersCount = 7
        time = 10
    }
}
