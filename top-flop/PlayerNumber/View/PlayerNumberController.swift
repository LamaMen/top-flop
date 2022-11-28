//
//  PlayerNumberController.swift
//  top-flop
//
//  Created by Илья Родионов on 23.11.2022.
//

import UIKit

class PlayerNumberController: UIViewController {
    var presenter: PlayerNumberPresenter?
    
    @IBOutlet weak var card: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        presenter?.onLoad()
        
        card.layer.cornerRadius = 20
        card.layer.borderWidth = 10
        card.layer.borderColor = UIColor(named: "PrimaryColor")?.cgColor
        card.setTitle("Игрок 1", for: .normal)
        card.titleLabel?.font = UIFont(name: "Helvetica", size: 50)
    }
        

    @IBAction func cardTap(_ sender: Any) {
        if (presenter?.nextCard(card: card) == false) {
            let vc = ChooseQuestionAssemble.assembly()
            self.navigationController?.pushViewController(vc, animated: false)
        }
    }
    
    func openCard(number: Int) {
        card.setTitle("\(number)", for: .normal)
        card.titleLabel?.font = UIFont(name: "Helvetica", size: 90)
        
        UIView.transition(with: card, duration: 0.4, options: .transitionFlipFromLeft, animations: nil, completion: nil)
    }
    
    func closeCard(number: Int) {
        card.setTitle("Игрок \(number)", for: .normal)
        card.titleLabel?.font = UIFont(name: "Helvetica", size: 50)

        UIView.transition(with: card, duration: 0.4, options: .transitionFlipFromTop, animations: nil, completion: nil)
    }
}
