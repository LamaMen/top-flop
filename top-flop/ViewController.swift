//
//  ViewController.swift
//  top-flop
//
//  Created by Илья Родионов on 03.11.2022.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let storyboard = UIStoryboard(name: "ChooseQuestion", bundle: nil)
        let vc = storyboard.instantiateViewController(identifier: "ChooseQuestion")
        self.navigationController?.setViewControllers([vc], animated: false)
    }
}
