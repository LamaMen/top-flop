//
//  StartScreenViewController.swift
//  top-flop
//
//  Created by Илья Родионов on 23.11.2022.
//

import UIKit

class StartScreenViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func playGame(_ sender: Any) {
        // Создаем контроллер и переходим к нему
        let vc = GameSettingAssemble.assembly()
        self.navigationController?.pushViewController(vc, animated: false)
    }
    
    @IBAction func rules(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Tutorial", bundle: nil)
        let vc = storyboard.instantiateViewController(identifier: "Tutorial")
        self.navigationController?.pushViewController(vc, animated: false)
    }
}
