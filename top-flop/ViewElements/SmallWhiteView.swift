//
//  SmallWhiteView.swift
//  top-flop
//
//  Created by Илья Родионов on 21.11.2022.
//

import UIKit

class SmallWhiteView: UIView {
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        self.layer.cornerRadius = 28
        self.heightAnchor.constraint(equalToConstant: 150).isActive = true
    }
}
