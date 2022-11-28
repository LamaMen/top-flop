//
//  QuestionViewCell.swift
//  top-flop
//
//  Created by Илья Родионов on 22.11.2022.
//

import UIKit

class QuestionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var Container: UIView!
    @IBOutlet weak var label: UILabel!
    
    func setup(with question: String)
        {
            let pink = UIColor(named: "PrimaryColor")
            
            Container.layer.borderWidth = 5
            Container.layer.borderColor = pink?.cgColor
            Container.layer.cornerRadius = 28
            label.text = question
        }
}
