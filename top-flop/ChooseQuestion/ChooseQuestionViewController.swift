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
