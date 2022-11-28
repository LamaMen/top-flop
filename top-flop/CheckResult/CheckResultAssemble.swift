//
//  CheckResultAssemble.swift
//  top-flop
//
//  Created by Илья Родионов on 27.11.2022.
//

import UIKit

class CheckResultAssemble {
    static func assembly() -> UIViewController {
        let storyboard = UIStoryboard(name: "CheckResult", bundle: nil)
        let viewController = storyboard.instantiateViewController(identifier: "CheckResult") as! CheckResultViewController
        
        let presenter = CheckResultPresenter(view: viewController)
        viewController.presenter = presenter
        
        return viewController
    }
}
