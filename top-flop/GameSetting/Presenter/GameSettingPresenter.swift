//
//  GameSettingPresenter.swift
//  top-flop
//
//  Created by Илья Родионов on 26.11.2022.
//

import Foundation

/// Класс презентера
///
/// В данном классе описывается вся логика экрана:
/// * Какие-либо вычисления
/// * Запросы к хранилищу
/// * Запросы к API
/// Для общего понимания [статья](https://habr.com/ru/company/badoo/blog/281162/)
class GameSettingPresenter {
    /// Объект контроллера
    ///
    /// Нужен чтобы можно было уведомлять контроллер об обновлении интерфейса
    /// Обязательно должен быть *unowned*, чтобы не возникали утечки памяти
    private unowned var view: GameSettingController
    
    /// Модель хранения настроек. При любом изменеии должна обновляться модель
    private var settings = GameSetting()
    
    init(view: GameSettingController) {
        self.view = view
    }
    
    /// Функция, вызываемая при старте экрана
    ///
    /// Производит загрузку данных из хранилища и обновление экрана
    func onLoad() {
        // Загружаем данные
        settings.time = SettingsStorage.roundTime
        settings.playersCount = SettingsStorage.numOfPlayers
        
        // Обновляем экран
        view.updateLabels(setting: settings)
    }
    
    /// Обработчик изменения настройки времени
    ///
    /// Производит сохранение нового значения в хранилище и обновление экрана
    func timeSettingChanged(time: Int) {
        // Таким образом можно сохранить значение в хранилище
        SettingsStorage.roundTime = time
        
        // Обновляем модель
        settings.time = time
        
        // Отображаем изменения
        view.updateLabels(setting: settings)
    }
    
    /// Обработчик изменения настройки количества игроков
    ///
    /// Аналогичен предыдущему методу
    func playerCountSettingChanged(playerCount: Int) {
        SettingsStorage.numOfPlayers = playerCount
        settings.playersCount = playerCount
        
        view.updateLabels(setting: settings)
    }
}
