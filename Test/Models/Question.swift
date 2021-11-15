//
//  Questions.swift
//  Test
//
//  Created by Никита Бат on 13.11.2021.
//

import Foundation

struct Question {
    let title: String
    let type: ResponseType
    let level: Level
    let answers: [Answer]
}

struct Answer {
    let title: String
    let correct: Bool
}

enum ResponseType {
    case single
    case multiple
}

enum Level: String {
    case first = "Лёгкий"
    case second = "Средний"
    case third = "Сложный"
}

enum Junior: String {
    case master = "Алексей Ефимов"
    case intermediate = "Уверенный Джуниор"
    case elementary = "Джуниор"
    case beginner = "Суперджуниор"
    
    var definition: String {
        switch self {
        case .master:
            return "Что Вы тут забыли?"
        case .intermediate:
            return "Вашему уровню могут позавидовать многие, при этом Вам еще есть чему поучиться"
        case .elementary:
            return "Ваш уровень выше начального, есть много пробелов в знаниях. Продолжайте совершенствоваться."
        case .beginner:
            return "Ваш уровень начальный! Бегом за учебник!"
        }
    }
}
