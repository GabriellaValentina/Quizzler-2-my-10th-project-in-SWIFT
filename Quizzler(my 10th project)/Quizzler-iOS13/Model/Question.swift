//
//  Question.swift
//  Quizzler-iOS13
//
//  Created by Gabriela Valentina on 15.12.2022.
//  Copyright © 2022 The App Brewery. All rights reserved.
//

import Foundation
struct Question {
    let text:String
    let answers:[String]
    let correctAnswer:String
    init(q: String, a: [String], correctAnswer: String) {
        text = q
        answers = a
        self.correctAnswer = correctAnswer
    }
}
