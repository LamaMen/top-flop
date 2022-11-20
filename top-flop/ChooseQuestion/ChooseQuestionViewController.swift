//
//  ChooseQuestionViewController.swift
//  top-flop
//
//  Created by Илья Родионов on 20.11.2022.
//

import UIKit

class ChooseQuestionViewController: UIViewController {
    
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var message: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        message.layer.cornerRadius = 28
        collectionView.dataSource = self
        collectionView.delegate = self
        collectionView.collectionViewLayout = UICollectionViewFlowLayout()
        collectionView.backgroundColor = UIColor.clear
        // Do any additional setup after loading the view.
    }

}
extension ChooseQuestionViewController: UICollectionViewDataSource  {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return questions.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "QuestionViewCell", for: indexPath) as! QuestionViewCell
        cell.setup(with: questions[indexPath.row])
        return cell
    }
    
}
extension ChooseQuestionViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        var width = (collectionView.frame.size.width - 10) / 2
        var height = (collectionView.frame.size.height - 10) / 2

        return CGSize(width: width, height: height)
    }
}
extension ChooseQuestionViewController: UICollectionViewDelegate
{
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let alert = UIAlertController(title: "Текст вопроса", message: questions[indexPath.row], preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Начать игру", style: .default, handler: nil)) // MARK ЗДЕСЬ ДОБАВИТЬ ПЕРЕХОД НА СТРАНИЦУ РАУНДА!
        self.present(alert, animated: true) {
                let tapGesture = UITapGestureRecognizer(target: self, action: #selector(self.dismissAlertController))
                alert.view.superview?.subviews[0].addGestureRecognizer(tapGesture)
        }
        
    }
    @objc func dismissAlertController(){
        self.dismiss(animated: true, completion: nil)
    }
}
