//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var score: UILabel!
    @IBOutlet weak var questionText: UILabel!
    @IBOutlet weak var answer1: UIButton!
    @IBOutlet weak var answer2: UIButton!
    @IBOutlet weak var answer3: UIButton!
    @IBOutlet weak var progressView: UIProgressView!
    var quizBrain = QuizBrain()
    override func viewDidLoad() {
        super.viewDidLoad()
        questionAndAnswers()
       
        
    }

    @IBAction func buttonPresed(_ sender: UIButton) {
        
        questionAndAnswers()
        
        if sender.currentTitle == quizBrain.correctAnswerQuiz(){
            sender.backgroundColor = UIColor.green
            quizBrain.scoreLabelUpdate()
        }
        else {
            sender.backgroundColor = UIColor.red
        }
        
        Timer.scheduledTimer(timeInterval: 0.5, target: self, selector: #selector(questionAndAnswers), userInfo: nil, repeats: false)
        
        quizBrain.updateNumberQuestion()
        
        
        score.text = "Score \(quizBrain.scoreLabel)"
        
    }
 @objc func questionAndAnswers(){
     quizBrain.arrayZero()
     questionText.text = quizBrain.question[quizBrain.numberQuestion].text
     answer1.setTitle(quizBrain.question[quizBrain.numberQuestion].answers[quizBrain.array], for: .normal)
     quizBrain.updateArray()
     answer2.setTitle(quizBrain.question[quizBrain.numberQuestion].answers[quizBrain.array], for: .normal)
     quizBrain.updateArray()
     answer3.setTitle(quizBrain.question[quizBrain.numberQuestion].answers[quizBrain.array], for: .normal)
     progressView.progress = quizBrain.progress()
        answer1.backgroundColor = UIColor.clear
     answer2.backgroundColor = UIColor.clear
     answer3.backgroundColor = UIColor.clear
     
       
    }
    
}

