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
        setTimeLeft(timeLeft: timeLeft)
    }
    
    func setTimeLeft(timeLeft: Int) {
        let seconds = timeLeft % 60
        let fullSeconds = String(seconds / 10) + String(seconds % 10)
        let timeFormatted = "\(timeLeft / 60):\(fullSeconds)"
        
        view.updateLabels(timeLeft: timeFormatted)
    }
    
    func startCountdown() {
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(onTimerFires), userInfo: nil, repeats: true)
    }
    
    func stopCountdown() {
        timer?.invalidate()
        timer = nil
        view.navigateOnNext()
    }
    
    @objc func onTimerFires () {
        timeLeft -= 1
        setTimeLeft(timeLeft: timeLeft)
        if timeLeft <= 0 {
            stopCountdown()
        }
    }
}
