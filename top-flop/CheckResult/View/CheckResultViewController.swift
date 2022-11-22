//
//  CheckResultViewController.swift
//  top-flop
//
//  Created by Илья Родионов on 18.11.2022.
//

import UIKit

class CheckResultViewController: UIViewController {

    @IBOutlet weak var answersView: UICollectionView!
    @IBOutlet weak var messageBox: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
        
        answersView.dataSource = self
        answersView.delegate = self
        answersView.collectionViewLayout = UICollectionViewFlowLayout()
    }
    
    private func setupViews() {
        answersView.backgroundColor = UIColor.clear
//        messageBox.layer.cornerRadius = 28
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

        return CGSize(width: width, height: height)
    }
}
