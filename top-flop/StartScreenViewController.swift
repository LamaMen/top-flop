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

        // Do any additional setup after loading the view.
    }
    
    @IBAction func playGame(_ sender: Any) {
        let storyboard = UIStoryboard(name: "GameSetting", bundle: nil)
        let vc = storyboard.instantiateViewController(identifier: "GameSetting")
//        let storyboard = UIStoryboard(name: "RoundEnd", bundle: nil)
//        let vc = storyboard.instantiateViewController(identifier: "RoundEnd")
        self.navigationController?.pushViewController(vc, animated: false)
    }
    
    @IBAction func rules(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Tutorial", bundle: nil)
        let vc = storyboard.instantiateViewController(identifier: "Tutorial")
        self.navigationController?.pushViewController(vc, animated: false)
    }
}
