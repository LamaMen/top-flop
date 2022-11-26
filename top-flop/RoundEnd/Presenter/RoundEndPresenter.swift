//
//  RoundEndPresenter.swift
//  top-flop
//
//  Created by Илья Родионов on 26.11.2022.
//

import Foundation

class RoundEndPresenter {
    private unowned var view: RoundEndViewController
    
    private var timeLeft = 0
    private var timer: Timer?
    
    init(view: RoundEndViewController) {
        self.view = view
    }
    
    func onLoad() {
        timeLeft = SettingsStorage.roundTime * 60
        view.updateLabels(roundT: timeLeft)
    }
    
    func startCountdown() {
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(onTimerFires), userInfo: nil, repeats: true)
    }
    
    func stopCountdown() {
        timer?.invalidate()
        timer = nil
    }
    
    @objc func onTimerFires () {
        timeLeft -= 1
        view.updateLabels(roundT: timeLeft)
        if timeLeft <= 0 {
            timer?.invalidate()
            timer = nil
            view.navigateOnNext()
        }
    }
}
