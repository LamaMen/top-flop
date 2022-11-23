//
//  TutorialViewController.swift
//  top-flop
//
//  Created by Илья Родионов on 23.11.2022.
//

import UIKit

class RoundEndViewController: UIViewController {
    
    @IBOutlet weak var time: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let s = "3:2"
        time.text = s + "1"
    }
    
    @IBAction func endRound(_ sender: Any) {
        let storyboard = UIStoryboard(name: "CheckResult", bundle: nil)
        let vc = storyboard.instantiateViewController(identifier: "CheckResult")
        self.navigationController?.setViewControllers([vc], animated: false)
    }
}
