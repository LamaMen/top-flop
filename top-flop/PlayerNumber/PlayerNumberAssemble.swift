//
//  PlayerNumberAssemble.swift
//  top-flop
//
//  Created by Илья Родионов on 26.11.2022.
//

import Foundation
import UIKit

final class PlayerNumberAssemble {
    static func assemble() -> UIViewController {
        let storyboard = UIStoryboard(name: "PlayerNumber", bundle: nil)
        let viewController = storyboard.instantiateViewController(identifier: "PlayerNumber") as PlayerNumberController?
        
        let presenter = PlayerNumberPresenter(view: viewController!)
        
        viewController?.presenter = presenter
        
        return viewController!
    }
}
