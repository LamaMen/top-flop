//
//  TopFlopTitle.swift
//  top-flop
//
//  Created by Илья Родионов on 24.11.2022.
//

import UIKit

class TopFlopTitle: UIView {
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.setup()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setup()
    }
    
    private func setup() {
        let bundle = Bundle.init(for: TopFlopTitle.self)
        
        if let view = bundle.loadNibNamed("TopFlopTitle", owner: self, options: nil),
           let contentView = view.first as? UIView {
            addSubview(contentView)
            heightAnchor.constraint(equalToConstant: 155).isActive = true
            widthAnchor.constraint(equalToConstant: 276).isActive = true
        }
    }
}
