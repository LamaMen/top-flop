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

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func gamersCountChange(_ sender: UISlider) {
        let currentValue = Int(sender.value)
        playersCountLabel.text = "\(currentValue)"
    }
    
    @IBAction func lapTimeChange(_ sender: UISlider) {
        let currentValue = Int(sender.value)
        lapTimeLabel.text = "\(currentValue)"
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
