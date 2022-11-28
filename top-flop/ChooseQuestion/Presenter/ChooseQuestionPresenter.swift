//
//  ChooseQuestionPresenter.swift
//  top-flop
//
//  Created by Илья Родионов on 27.11.2022.
//

import FirebaseFirestore

class ChooseQuestionPresenter
{
    private unowned var view: ChooseQuestionViewController
    
    init(view: ChooseQuestionViewController) {
        self.view = view
    }

    func onLoad() {
        let db = Firestore.firestore()
        db.collection("cards").getDocuments() { (documents, error) in
            if let error = error {
                print("Error getting documents: \(error)")
            } else {
                let cardNumber = Int.random(in: 0..<documents!.documents.count)
                let dataDescription = documents!.documents[cardNumber].data()
                let def = "Вопрос не найден"
                
                self.view.updateQuestions(questions: [
                    (dataDescription["first"] ?? def) as! String,
                    (dataDescription["second"] ?? def) as! String,
                    (dataDescription["third"] ?? def) as! String,
                    (dataDescription["fourth"] ?? def) as! String
                ])
            }
        }
    }
}
