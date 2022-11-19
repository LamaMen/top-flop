//
//  AnswerCollectionViewCell.swift
//  top-flop
//
//  Created by Илья Родионов on 18.11.2022.
//

import UIKit

class AnswerCollectionViewCell: UICollectionViewCell {
    
    
    @IBOutlet weak var numberLabel: UILabel!
    
    func setup(with answer: Answer) {
        numberLabel.text = answer.number
    }
}
