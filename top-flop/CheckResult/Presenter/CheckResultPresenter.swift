//
//  CheckResultPresenter.swift
//  top-flop
//
//  Created by Илья Родионов on 27.11.2022.
//
protocol CheckResultView: AnyObject {
    func initialSetup()
    
    func rightAnswer(newPlayer: Int)
    
    func wrongAnswer()
    
    func updateAnswers(answers: [Answer])
    
    func nextScreen()
}

class CheckResultPresenter {
    private unowned var view: CheckResultView
    private var answers: [Answer] = []
    private var currentNumber = 1
    
    
    init(view: CheckResultView) {
        self.view = view
    }
    
    func loadAnswers() {
        let playersNumbers = SettingsStorage.numOfPlayers!
        
        for i in 0...(playersNumbers - 1) {
            answers.append(Answer(number: "\(i + 1)", isSelected: false))
        }
        
        view.updateAnswers(answers: answers)
        view.initialSetup()
    }
    
    func onAnswerSelected(index: Int) {
        let player = index + 1
        let realNumber = PlayerNumberStorage.getPlayerNumber(player: player)
        
        if realNumber != currentNumber {
            // REMOVE POINT
            view.wrongAnswer()
            return
        }
        
        // ADD POINT
        answers[index].isSelected = true
        view.updateAnswers(answers: answers)
        currentNumber += 1
        view.rightAnswer(newPlayer: currentNumber)
        
        
        let playersNumbers = SettingsStorage.numOfPlayers!
        if currentNumber > playersNumbers {
            view.nextScreen()
        }
    }
}
