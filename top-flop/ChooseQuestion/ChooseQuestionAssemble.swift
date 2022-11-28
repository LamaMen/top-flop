//
//  ChooseQuestionAssemble.swift
//  top-flop
//
//  Created by Илья Родионов on 28.11.2022.
//

import UIKit

class ChooseQuestionAssemble {
    static func assembly() -> UIViewController {
        let storyboard = UIStoryboard(name: "ChooseQuestion", bundle: nil)
        let viewController = storyboard.instantiateViewController(identifier: "ChooseQuestion") as! ChooseQuestionViewController
        
        let presenter = ChooseQuestionPresenter(view: viewController)
        viewController.presenter = presenter
        
        return viewController
    }
}
