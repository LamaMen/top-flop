//
//  GameSettingController.swift
//  top-flop
//
//  Created by Илья Родионов on 23.11.2022.
//

import UIKit

/// Контроллер представления.
/// Отвечает за обработку нажатий и обновление вьюшек
///
/// Должен содержать поле с презентером, и при действиях пользователя вызывать методы презентера.
class GameSettingController: UIViewController {
    var presenter: GameSettingPresenter?

    @IBOutlet weak var playersCountSlider: UISlider!
    @IBOutlet weak var lapTimeSlider: UISlider!
    
    
    @IBOutlet weak var playersCountLabel: UILabel!
    @IBOutlet weak var lapTimeLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.hidesBackButton = true
        
        // Вызываем метод презентера, который обрабатывает загрузку представления
        // В данном случае мы загрузим сохраненные данные из хранилища
        presenter?.onLoad()
    }
    
    /// Функция обновления слайдеров и текстовых полей
    /// На вход получает модель настроек и отображает её
    func updateLabels(setting: GameSetting) {
        playersCountLabel.text = "\(setting.playersCount)"
        playersCountSlider.value = Float(setting.playersCount)
        
        lapTimeLabel.text = "\(setting.time)"
        lapTimeSlider.value = Float(setting.time)
    }
    
    /// Обработчик изменения слайдера количетсва игроков
    @IBAction func gamersCountChange(_ sender: UISlider) {
        let currentValue = Int(sender.value)
        // Уведомляем презентер об изменении количества игроков
        presenter?.playerCountSettingChanged(playerCount: currentValue)
    }
    
    /// Обработчик изменения слайдера выбора времени
    @IBAction func lapTimeChange(_ sender: UISlider) {
        let currentValue = Int(sender.value)
        // Уведомляем презентер об изменении количества времени на раунд
        presenter?.timeSettingChanged(time: currentValue)
    }
    
    @IBAction func startGame(_ sender: Any) {
        let storyboard = UIStoryboard(name: "PlayerNumber", bundle: nil)
        let vc = storyboard.instantiateViewController(identifier: "PlayerNumber")
        self.navigationController?.pushViewController(vc, animated: false)
    }
    
    @IBAction func back(_ sender: Any) {
        self.navigationController?.popViewController(animated: false)
    }
}
