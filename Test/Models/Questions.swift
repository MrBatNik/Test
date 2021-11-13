//
//  Questions.swift
//  Test
//
//  Created by Никита Бат on 13.11.2021.
//

import Foundation

struct Question {
    var text: String
    var answers: [Answer]
}

struct Answer {
    var text: String
    var type: AnswerType
}

enum AnswerType {
    case right, wrong

}

extension Question {
    
    static func getQuestions() -> [Question] {
        return [
            Question(
                text: "Какой ответ был выбран?",
                answers: [
                    Answer(text: "Yes", type: .right),
                    Answer(text: "Maybe", type: .wrong),
                    Answer(text: "No", type: .wrong),
                ]
            )
        ]
    }
    
}
