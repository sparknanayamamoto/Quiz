//
//  ResultViewController.swift
//  Quiz
//
//  Created by spark-04 on 2024/01/05.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var textView: UITextView!
    
    
    var nameText: String = ""
    var score: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        self.label.text =
        "\(self.nameText)さん　あなたのスコアは\(self.score)です。"
        
        var text = ""
        
        let quiz = QuizManager()
        let numberOfQuestions = quiz.quizzes.count

        switch self.score {
        case 0:
            text = "\(self.nameText)さん、\(self.score)点でしたね。動物の知識が不足しています。\n\nもっと勉強しましょう"
        case 1...2:
            text = "動物に関してあまり興味はないでしょうか？\n\nもっと頑張りましょう！"
        case 3...4:
            text = "動物にはかなり詳しい方ですね！\n\nもう少しです！"
        case 5..<numberOfQuestions:
            text = "あともう一歩！\n\nもう少しですよ！"
        case numberOfQuestions:
            text = "全問正解です！\n\nおめでとうございます！"
        default :
            break
        }
        
        self.textView.text = text
    }
    
    @IBAction func pushResultButton(_ sender: Any) {
        self.navigationController?.popToRootViewController(animated: true)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
