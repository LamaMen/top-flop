//
//  TutorialViewController.swift
//  top-flop
//
//  Created by Илья Родионов on 23.11.2022.
//

import UIKit

class TutorialViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()

        navigationItem.hidesBackButton = true
    }
    
    @IBAction func back(_ sender: Any) {
        self.navigationController?.popViewController(animated: false)
    }
}
