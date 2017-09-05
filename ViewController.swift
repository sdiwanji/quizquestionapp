import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var questionLabel: UILabel!
    
    @IBOutlet weak var answerLabel: UILabel!
    
    let questions = ["Who said 'Vini, Vidi, Vici'?", "What currency do they use in Japan?", "What's my name?"]

    let answers = ["Julius Caesar", "Yen", "Shaan"]
    var currentQuestion = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        questionLabel.text = questions.first
        answerLabel.text = answers.first
    }
    
    @IBAction func didTapShowAnswer(sender: AnyObject) {
        answerLabel.textColor = UIColor.blackColor()
    }
    
    
    @IBAction func didTapNextQuestion(sender: AnyObject) {
        answerLabel.textColor = UIColor.whiteColor()
        
        if currentQuestion + 1 >= questions.count{
            currentQuestion = 0
        } else {
            currentQuestion += 1
        }
        
        questionLabel.text = questions[currentQuestion]
        answerLabel.text = answers[currentQuestion]
    }

}

