//
//  Quiz.swift
//  Quiz
//
//  Created by spark-04 on 2023/12/28.
//

import UIKit

class Quiz {
    let text: String
    let correctAnswer: Bool
    let imageName: String
    
    init(text: String, correctAnswer: Bool, imageName: String) {
        self.text = text
        self.correctAnswer = correctAnswer
        self.imageName = imageName
    }
}
