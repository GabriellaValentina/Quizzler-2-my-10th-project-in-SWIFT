//
//  QuizBrain.swift
//  Quizzler-iOS13
//
//  Created by Gabriela Valentina on 15.12.2022.
//  Copyright © 2022 The App Brewery. All rights reserved.
//

import Foundation
struct QuizBrain{
    var numberQuestion = 0
    var scoreLabel = 0
    var question = [Question(q: "Which is the largest organ in the human body?", a: ["Heart", "Skin", "Large Intestine"], correctAnswer: "Skin"),
                    Question(q: "Five dollars is worth how many nickels?", a: ["25", "50", "100"], correctAnswer: "100"),
                    Question(q: "What do the letters in the GMT time zone stand for?", a: ["Global Meridian Time", "Greenwich Mean Time", "General Median Time"], correctAnswer: "Greenwich Mean Time"),
                    Question(q: "What is the French word for 'hat'?", a: ["Chapeau", "Écharpe", "Bonnet"], correctAnswer: "Chapeau"),
                    Question(q: "In past times, what would a gentleman keep in his fob pocket?", a: ["Notebook", "Handkerchief", "Watch"], correctAnswer: "Watch"),
                    Question(q: "How would one say goodbye in Spanish?", a: ["Au Revoir", "Adiós", "Salir"], correctAnswer: "Adiós"),
                    Question(q: "Which of these colours is NOT featured in the logo for Google?", a: ["Green", "Orange", "Blue"], correctAnswer: "Orange"),
                    Question(q: "What alcoholic drink is made from molasses?", a: ["Rum", "Whisky", "Gin"], correctAnswer: "Rum"),
                    Question(q: "What type of animal was Harambe?", a: ["Panda", "Gorilla", "Crocodile"], correctAnswer: "Gorilla"),
                    Question(q: "Where is Tasmania located?", a: ["Indonesia", "Australia", "Scotland"], correctAnswer: "Australia")
    ]
    
    func correctAnswerQuiz()->String{
        return question[numberQuestion].correctAnswer
    }
    mutating func scoreLabelUpdate(){
        scoreLabel += 1
    }
    mutating func updateNumberQuestion(){
        numberQuestion += 1
        if numberQuestion + 1 > question.count{
            numberQuestion = 0
            scoreLabel = 0
        }
    }
    var array = 0
    mutating func updateArray(){
        array += 1
    }
    mutating func arrayZero(){
        array = 0
    }
    func progress()-> Float{
        return Float(numberQuestion+1) / Float(question.count)
    }
}

