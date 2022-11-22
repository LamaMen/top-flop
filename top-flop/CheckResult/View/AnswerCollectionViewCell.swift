//
//  AnswerCollectionViewCell.swift
//  top-flop
//
//  Created by Илья Родионов on 18.11.2022.
//

import UIKit

class AnswerCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var numberLabel: UILabel!
    @IBOutlet weak var container: UIView!
    
    func setup(with answer: Answer) {
        let pink = UIColor(red: 254.0/255.0, green: 91.0/255.0, blue: 144.0/255.0, alpha: 1.0)
        let black = UIColor.black
        
        container.layer.borderWidth = 5
        container.layer.borderColor = pink.cgColor
        container.layer.cornerRadius = 12
        container.backgroundColor = answer.isSelected ? pink : black
        
        numberLabel.text = answer.number
    }
}
