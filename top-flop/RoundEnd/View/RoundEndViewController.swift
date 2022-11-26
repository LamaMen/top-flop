//
//  TutorialViewController.swift
//  top-flop
//
//  Created by Илья Родионов on 23.11.2022.
//

import UIKit

class RoundEndViewController: UIViewController {
    var presenter: RoundEndPresenter?
    
    let strokeTextAttributes: [NSAttributedString.Key: Any] = [
        .strokeColor : UIColor(named: "SecondaryColor")!,
        .foregroundColor : UIColor.black,
        .strokeWidth : 4.0
    ]
    
    @IBOutlet weak var time: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let title = NSAttributedString(string: "3:21", attributes: strokeTextAttributes)
        time.attributedText = title
        presenter?.onLoad()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        presenter?.startCountdown()
    }
    
    @IBAction func endRound(_ sender: Any) {
        presenter?.stopCountdown()
    }
    
    func navigateOnNext() {
        let storyboard = UIStoryboard(name: "CheckResult", bundle: nil)
        let vc = storyboard.instantiateViewController(identifier: "CheckResult")
        self.navigationController?.setViewControllers([vc], animated: false)
    }
    
    func updateLabels(timeLeft: String) {
        let title = NSAttributedString(string: timeLeft, attributes: strokeTextAttributes)
        time.attributedText = title
    }
}
