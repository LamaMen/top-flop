//
//  Settings.swift
//  top-flop
//
//  Created by Илья Родионов on 26.11.2022.
//

import Foundation

/// Класс для работы с хранилищем телефона.
/// Если надо получить какую из настроек, используем поля этого класса
///
/// Хранилище сохраняет пары "ключ - значение".
final class SettingsStorage{
    
    /// Ключи по которым будут храниться значения
    private enum SettingsKeys: String{
        case roundTime
        case numOfPlayers
    }
    
    /// Поле, отвечающее за хранение настройки времени раунда
    ///
    /// Пример работы можно смотреть в классе **GameSettingPresenter**
    static var roundTime: Int! {
        get{
            // Получаем сохраненное значение по ключу
            // Если данных не было, вернется дефолтное значение (0)
            let saved = UserDefaults.standard.integer(forKey: SettingsKeys.roundTime.rawValue)
            return saved != 0 ? saved : 10
        }
        set{
            // Получаем объект, отвечающий за хранение данных, и ключ для значения
            let defaults = UserDefaults.standard
            let key = SettingsKeys.roundTime.rawValue
            
            // Сохраняем переданное значение
            if let time = newValue {
                defaults.set(time, forKey: key)
            } else{
                defaults.removeObject(forKey: key)
            }
        }
    }
    
    /// Поле, отвечающее за хранение настройки количетства игроков
    ///
    /// Пример работы можно смотреть в классе **GameSettingPresenter**
    static var numOfPlayers: Int! {
        get{
            // Аналогично прошлому полю
            let saved = UserDefaults.standard.integer(forKey: SettingsKeys.numOfPlayers.rawValue)
            return saved != 0 ? saved : 7
        }
        set{
            let defaults = UserDefaults.standard
            let key = SettingsKeys.numOfPlayers.rawValue
            if let players = newValue {
                defaults.set(players, forKey: key)
            }
            else{
                defaults.removeObject(forKey: key)
            }
        }
    }
}
