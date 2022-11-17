//
//  GameSettingController.swift
//  top-flop
//
//  Created by Илья Родионов on 12.11.2022.
//

import UIKit

class GameSettingController: UIViewController {
    
    
    @IBOutlet weak var gamersCountSlider: UISlider!
    @IBOutlet weak var gamersCountLabel: UILabel!
    
    @IBOutlet weak var roundDurationLabel: UILabel!
    @IBOutlet weak var roundDurationSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    

    @IBAction func gamersCountChange(_ sender: UISlider) {
        let currentValue = Int(sender.value)
        gamersCountLabel.text = "\(currentValue)"
            
    }
    @IBAction func roundDurationChange(_ sender: UISlider) {
        let currentValue = Int(sender.value)
        roundDurationLabel.text = "\(currentValue)"
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
