//
//  FinishScorePresenter.swift
//  top-flop
//
//  Created by Илья Родионов on 28.11.2022.
//

class FinishScorePresenter
{
    private unowned var view: FinishScoreViewController
    private var score: String = ""
    
    init(view: FinishScoreViewController) {
        self.view = view
    }
    
    func onLoad() {
        score = String(ScoreStorage.score)
        view.updateLabels(s: score)
    }
}
