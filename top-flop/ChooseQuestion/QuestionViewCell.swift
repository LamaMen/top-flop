//
//  QuestionViewCell.swift
//  top-flop
//
//  Created by Илья Родионов on 20.11.2022.
//

import UIKit

class QuestionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var Container: UIView!
    
    @IBOutlet weak var label: UILabel!

    
    func setup(with question: String)
    {
        var pink = UIColor(red: 254.0/255.0, green: 91.0/255.0, blue: 144.0/255.0, alpha: 1.0)
        Container.layer.borderWidth = 5
        Container.layer.borderColor = pink.cgColor
        Container.layer.cornerRadius = 28
        label.text = question
        
    }
}
