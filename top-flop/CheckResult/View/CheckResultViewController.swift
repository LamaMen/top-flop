//
//  CheckResultViewController.swift
//  top-flop
//
//  Created by Илья Родионов on 18.11.2022.
//

import UIKit

class CheckResultViewController: UIViewController {
    var presenter: CheckResultPresenter?

    @IBOutlet weak var answersView: UICollectionView!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var currentPlayer: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    
    private var answers: [Answer] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
        presenter?.loadAnswers()
        
        answersView.dataSource = self
        answersView.delegate = self
        answersView.collectionViewLayout = UICollectionViewFlowLayout()
    }
    
    private func setupViews() {
        answersView.backgroundColor = UIColor.clear
    }
}

extension CheckResultViewController: CheckResultView {
    func initialSetup() {
        setCurrentPlayer(number: 1)
        imageView.isHidden = true
        titleLabel.text = ""
    }
    
    func rightAnswer(newPlayer: Int) {
        imageView.isHidden = false
        imageView.image = UIImage(named: "HappyCat")
        titleLabel.text = "ВСЁ ТАК!"
        setCurrentPlayer(number: newPlayer)
    }
    
    func wrongAnswer() {
        imageView.isHidden = false
        let image = UIImage(named: "SurprisedCat")
        imageView.image = image
        titleLabel.text = "ПОПРОБУЙ СНОВА"
    }
    
    func updateAnswers(answers: [Answer]) {
        self.answers = answers
        answersView.reloadData()
    }
    
    
    func nextScreen() {
        let vc = FinishScoreAssemble.assembly()
        self.navigationController?.setViewControllers([vc], animated: false)
    }
    
    private func setCurrentPlayer(number: Int) {
        currentPlayer.text = "У КАКОГО ИГРОКА КАРТА С ЧИСЛОМ \(number)?"
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

extension CheckResultViewController: UICollectionViewDelegate
{
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        presenter?.onAnswerSelected(index: indexPath.row)
    }
}
