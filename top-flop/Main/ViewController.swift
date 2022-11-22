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
    }

    @IBAction func checkNumber() {
        let stbrd = UIStoryboard(name: "SecondStoryboard", bundle: nil)
        let vc = stbrd.instantiateViewController(identifier: "SecondStoryboard")
//        let stbrd = UIStoryboard(name: "EndGame", bundle: nil)
//        let vc = stbrd.instantiateViewController(identifier: "EndGame")
        self.navigationController?.pushViewController(vc, animated: false)
    }
}

