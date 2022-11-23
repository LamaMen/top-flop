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
        let s = "3"
        score.text = s + "!"
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
