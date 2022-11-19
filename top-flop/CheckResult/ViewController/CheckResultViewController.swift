//
//  CheckResultViewController.swift
//  top-flop
//
//  Created by Илья Родионов on 18.11.2022.
//

import UIKit

class CheckResultViewController: UIViewController {

    @IBOutlet weak var answersView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        answersView.dataSource = self
        answersView.delegate = self
        answersView.collectionViewLayout = UICollectionViewFlowLayout()
    }

}

extension CheckResultViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return answers.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "AnswerCollectionViewCell", for: indexPath) as! AnswerCollectionViewCell
            
        cell.setup(with: answers[indexPath.row])
        return cell
    }
}

extension CheckResultViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        let width = (answersView.frame.size.width - 20) / 3
        let height = (answersView.frame.size.height - 20) / 3
        
//        let width = 400
//        let height = 400
        return CGSize(width: width, height: height)
    }
}
