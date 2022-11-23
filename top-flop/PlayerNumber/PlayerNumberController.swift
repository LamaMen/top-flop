//
//  PlayerNumberController.swift
//  top-flop
//
//  Created by Илья Родионов on 23.11.2022.
//

import UIKit

class PlayerNumberController: UIViewController {
    
    @IBOutlet weak var card: UIButton!
    var open: Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()

        card.layer.cornerRadius = 20
        card.layer.borderWidth = 10
        card.layer.borderColor = UIColor(red: 254/255.0, green: 91/255.0, blue: 144/255.0, alpha: 1.0).cgColor
        card.setTitle("Игрок 1", for: .normal)
        card.titleLabel?.font = UIFont(name: "Helvetica", size: 50)
            // Do any additional setup after loading the view.
    }
        

    @IBAction func cardFlip(_ sender: Any) {
        if (open) {
            open = false
            
            card.setTitle("Игрок 1", for: .normal)
            card.titleLabel?.font = UIFont(name: "Helvetica", size: 50)
            
            UIView.transition(with: card, duration: 0.4, options: .transitionFlipFromTop, animations: nil, completion: nil)
        } else {
            open = true
            
            card.setTitle("4", for: .normal)
            card.titleLabel?.font = UIFont(name: "Helvetica", size: 90)
                
            UIView.transition(with: card, duration: 0.4, options: .transitionFlipFromLeft, animations: nil, completion: nil)

        }
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
