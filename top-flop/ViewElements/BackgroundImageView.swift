//
//  BackgroundImageView.swift
//  top-flop
//
//  Created by Илья Родионов on 21.11.2022.
//

import UIKit

class BackgroundImageView: UIImageView {

    required init?(coder: NSCoder) {
        super.init(coder: coder)
        image = UIImage(named: "back.png")
    }
}
