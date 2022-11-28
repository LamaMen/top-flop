//
//  FinishScoreAssemble.swift
//  top-flop
//
//  Created by Илья Родионов on 28.11.2022.
//

import UIKit

class FinishScoreAssemble {
    static func assembly() -> UIViewController {
        let storyboard = UIStoryboard(name: "FinishScore", bundle: nil)
        let viewController = storyboard.instantiateViewController(identifier: "FinishScore") as! FinishScoreViewController
        
        let presenter = FinishScorePresenter(view: viewController)
        viewController.presenter = presenter
        
        return viewController
    }
}
