import UIKit
import FirebaseFirestore

class ChooseQuestionViewController: UIViewController {
    
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var message: UIView!
    
    var presenter: ChooseQuestionPresenter?
    private var questions: [String] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        presenter?.onLoad()
        
        message.layer.cornerRadius = 28
        collectionView.dataSource = self
        collectionView.delegate = self
        collectionView.collectionViewLayout = UICollectionViewFlowLayout()
        collectionView.backgroundColor = UIColor.clear
    }
    
    func updateQuestions(questions: [String]) {
        self.questions = questions
        collectionView.reloadData()
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
        let width = (collectionView.frame.size.width - 10) / 2
        let height = (collectionView.frame.size.height - 10) / 2

        return CGSize(width: width, height: height)
    }
}

extension ChooseQuestionViewController: UICollectionViewDelegate
{
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let alert = UIAlertController(
            title: "Текст вопроса",
            message: questions[indexPath.row],
            preferredStyle: .alert
        )
        
        alert.view.tintColor = UIColor.systemPink
        alert.addAction(UIAlertAction(title: "Начать игру", style: .default){_ in
            
            let vc = RoundEndAssemble.assembly()
            self.navigationController?.setViewControllers([vc], animated: false)
        })
        
        self.present(alert, animated: true, completion: {
            let tapGesture = UITapGestureRecognizer(target: self, action: #selector(self.dismissAlertController))
            alert.view.superview?.subviews[0].addGestureRecognizer(tapGesture)
        })
        
    }
    
    @objc func dismissAlertController() {
        self.dismiss(animated: true, completion: nil)
    }
}
