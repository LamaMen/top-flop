//
//  PlayerNumberPresenter.swift
//  top-flop
//
//  Created by Илья Родионов on 26.11.2022.
//

import UIKit



class PlayerNumberPresenter {
    private unowned var view: PlayerNumberController
    
    private var playerNumberArray: [Int] = []
    private let numberOfPlayers: Int = SettingsStorage.numOfPlayers!
    private var currentPlayer: Int = 1
    private var open: Bool = false
    
    init(view: PlayerNumberController){
        self.view = view
    }
    
    func onLoad() {
        playerNumberArray = Array(1...numberOfPlayers).shuffled()
        
        for i in 0...(numberOfPlayers - 1) {
            PlayerNumberStorage.setPlayerNumber(player: i + 1, number: playerNumberArray[i])
        }
    }
    
    func nextCard(card: UIButton) -> Bool {
        if (currentPlayer > numberOfPlayers) {
            return false
        }
        
        if (open) {
            view.closeCard(number: currentPlayer)
            open = false
        } else {
            let number = PlayerNumberStorage.getPlayerNumber(player: currentPlayer)
            view.openCard(number: number)
            open = true
            currentPlayer = currentPlayer + 1
        }
        
        return true
    }
}
