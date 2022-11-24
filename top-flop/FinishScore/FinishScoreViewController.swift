//
//  FinishScoreViewController.swift
//  top-flop
//
//  Created by Илья Родионов on 22.11.2022.
//

import UIKit

class FinishScoreViewController: UIViewController {
    
    @IBOutlet weak var message: UIView!
    @IBOutlet weak var score: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        message.heightAnchor.constraint(equalToConstant: 400).isActive = true
        message.layer.cornerRadius = 28
        let s = 3
        score.text = "\(s)!"
    }
    
    @IBAction func newRound(_ sender: Any) {
        let storyboard = UIStoryboard(name: "PlayerNumber", bundle: nil)
        let vc = storyboard.instantiateViewController(identifier: "PlayerNumber")
        self.navigationController?.setViewControllers([vc], animated: false)
    }
    
    @IBAction func endGame(_ sender: Any) {
        let storyboard = UIStoryboard(name: "StartScreen", bundle: nil)
        let vc = storyboard.instantiateViewController(identifier: "StartScreen")
        self.navigationController?.setViewControllers([vc], animated: false)
    }
}
