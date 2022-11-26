//
//  GameSettingAssemble.swift
//  top-flop
//
//  Created by Илья Родионов on 26.11.2022.
//

import UIKit

final class RoundEndAssemble {
    
    /// Создаем ViewController. Также связываем созданный контроллер с презентером.
    /// Теперь при любом вызове невигации необходимо вызывать этот метод, чтобы получить контроллер
    static func assembly() -> UIViewController {
        // Создаем контроллер
        let storyboard = UIStoryboard(name: "RoundEnd", bundle: nil)
        let viewController = storyboard.instantiateViewController(identifier: "RoundEnd") as RoundEndViewController?
        
        // Создаем презентер
        let presenter = RoundEndPresenter(view: viewController!)

        // Связываем их
        viewController?.presenter = presenter
        
        return viewController!
    }
}
