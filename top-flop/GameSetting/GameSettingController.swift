//
//  GameSettingController.swift
//  top-flop
//
//  Created by Илья Родионов on 23.11.2022.
//

import UIKit

class GameSettingController: UIViewController {

    @IBOutlet weak var playersCountSlider: UISlider!
    @IBOutlet weak var lapTimeSlider: UISlider!
    
    
    @IBOutlet weak var playersCountLabel: UILabel!
    @IBOutlet weak var lapTimeLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    @IBAction func gamersCountChange(_ sender: UISlider) {
        let currentValue = Int(sender.value)
        playersCountLabel.text = "\(currentValue)"
    }
    
    @IBAction func lapTimeChange(_ sender: UISlider) {
        let currentValue = Int(sender.value)
        lapTimeLabel.text = "\(currentValue)"
    }
    
    @IBAction func startGame(_ sender: Any) {
        let storyboard = UIStoryboard(name: "PlayerNumber", bundle: nil)
        let vc = storyboard.instantiateViewController(identifier: "PlayerNumber")
        self.navigationController?.pushViewController(vc, animated: false)
    }
    
    @IBAction func back(_ sender: Any) {
        self.navigationController?.popViewController(animated: false)
    }
}
