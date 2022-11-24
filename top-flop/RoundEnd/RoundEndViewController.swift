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
        
        let strokeTextAttributes: [NSAttributedString.Key: Any] = [
            .strokeColor : UIColor(named: "SecondaryColor")!,
            .foregroundColor : UIColor.black,
            .strokeWidth : 4.0
        ]
        
        let title = NSAttributedString(string: "3:21", attributes: strokeTextAttributes)
        time.attributedText = title
    }
    
    @IBAction func endRound(_ sender: Any) {
        let storyboard = UIStoryboard(name: "CheckResult", bundle: nil)
        let vc = storyboard.instantiateViewController(identifier: "CheckResult")
        self.navigationController?.setViewControllers([vc], animated: false)
    }
}
