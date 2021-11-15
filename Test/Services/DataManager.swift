//
//  DataManager.swift
//  Test
//
//  Created by Никита Бат on 13.11.2021.
//

import Foundation

extension Question {
    
    static func getQuestions() -> [Question] {
        return [
            Question(title: "Чем отличаются операторы break и continue?", type: .single, level: .first, answers: [
                            Answer(title: "Break - пропускает итерацию, continue - выходит из цикла", correct: false),
                            Answer(title: "Они используются в разных циклах", correct: false),
                            Answer(title: "Continue - пропускает итерацию, break - выходит из цикла", correct: true),
                            Answer(title: "У них нет никакой разницы", correct: false),
                            ]
                            ),
            Question(title: "Где правильно создана переменная?", type: .single, level: .first, answers: [
                            Answer(title: "var x: Float = 2.56", correct: true),
                            Answer(title: "var x = 2.56: Float", correct: false),
                            Answer(title: "float x = 2.56", correct: false),
                            Answer(title: "var Float: x = 2.56", correct: false),
                            ]
                            ),
            Question(title: "Где правильно создан массив со строками?", type: .single, level: .first, answers: [
                            Answer(title: "var words: String = ()", correct: false),
                            Answer(title: "var words = [String]", correct: false),
                            Answer(title: "var words: String = ()", correct: false),
                            Answer(title: "var words = [String]()", correct: true),
                            ]
                            ),
            Question(title: "Какая библиотека нужна для создания пользовательского интерфейса?", type: .single, level: .first, answers: [
                            Answer(title: "UI", correct: false),
                            Answer(title: "SpriteKit", correct: false),
                            Answer(title: "UIKit", correct: true),
                            Answer(title: "GameplayKit", correct: false),
                            ]
                            ),
            Question(title: "Как расшифровывается MVC", type: .single, level: .first, answers: [
                            Answer(title: "Module-View-Controller", correct: false),
                            Answer(title: "Model-View-Cell", correct: false),
                            Answer(title: "Module-View-Cell", correct: false),
                            Answer(title: "Model-View-Controller", correct: true),
                            ]
                            ),
            Question(title: "В приведённом списке выберите логические операторы.", type: .multiple, level: .first, answers: [
                            Answer(title: "var name = \"Tim Cook\"", correct: true),
                            Answer(title: "fruit = \"Apple\"", correct: false),
                            Answer(title: "let city = \"Moscow\"", correct: false),
                            Answer(title: "var count = 23", correct: true),
                            Answer(title: "age = 41", correct: false)
                            ]
                            ),
            Question(title: "Отметьте строки программного кода, содержащие ошибки.", type: .multiple, level: .first, answers: [
                            Answer(title: "let d: String = 2", correct: true),
                            Answer(title: "var a: Int = 10", correct: false),
                            Answer(title: "let b: String = Hello!", correct: true),
                            Answer(title: "let c: Double = 20", correct: false)
                            ]
                            ),
//            Средний уровень
            Question(title: "Тип, который определяет набросок методов, свойств и т.д.:", type: .single, level: .second, answers: [
                            Answer(title: "Переменная в Swift", correct: false),
                            Answer(title: "Константа в Swift", correct: false),
                            Answer(title: "Протокол в Swift", correct: true),
                            Answer(title: "Нету правильного ответа", correct: false),
                            ]
                            ),
            Question(title: "Можно ли добавить stored property к типу, используя extencion", type: .single, level: .second, answers: [
                            Answer(title: "Да, в некоторых случаях", correct: false),
                            Answer(title: "Нет", correct: true),
                            Answer(title: "Да, всегда", correct: false),
                            Answer(title: "Только в эденичных случаях", correct: false),
                            ]
                            ),
            Question(title: "Неупорядоченная коллекция, хранящая в себе значения с уникальным ключом – это", type: .single, level: .second, answers: [
                            Answer(title: "Все ответы верны", correct: false),
                            Answer(title: "Множество", correct: false),
                            Answer(title: "Массив", correct: false),
                            Answer(title: "Словарь", correct: true),
                            ]
                            ),
            Question(title: "Что произойдёт при обращении к массиву из пяти элементов по индексу 5?", type: .single, level: .second, answers: [
                            Answer(title: "Будет возвращено значение пятого элемента", correct: false),
                            Answer(title: "Будет возвращено значение первого элемента", correct: false),
                            Answer(title: "Возникнет ошибка", correct: true),
                            Answer(title: "Будет nil", correct: false),
                            ]
                            ),
            Question(title: "Как Apple рекомендует открывать UITableViewController?", type: .single, level: .second, answers: [
                            Answer(title: "Никак не рекомендует", correct: true),
                            Answer(title: "Через UINavigationController", correct: false),
                            Answer(title: "Модально", correct: false),
                            Answer(title: "Через репозиторий", correct: false),
                            ]
                            ),
            Question(title: "Выберете два правильных вариантов создание массива", type: .multiple, level: .second, answers: [
                            Answer(title: "var numbers = [Int]()", correct: true),
                            Answer(title: "var nurmers = []", correct: false),
                            Answer(title: "var numbers: [Int]", correct: true),
                            Answer(title: "var nurmers = [String]", correct: false),
                            ]
                            ),
            Question(title: "Выберете два правильных вариантов создание словаря", type: .multiple, level: .second, answers: [
                            Answer(title: "var phones: Dictionary(String, String) = [:]", correct: false),
                            Answer(title: "var phones: Dictionary = [:]", correct: false),
                            Answer(title: "var phones: [String: String] = [:]", correct: true),
                            Answer(title: "var phones: Dictionary<String, String> = [:]", correct: true),
                            ]
                            ),
//            Сложный уровень
            Question(title: "Замыкания — это какой тип-значние?", type: .single, level: .third, answers: [
                            Answer(title: "Все ответы верны", correct: false),
                            Answer(title: "Наследие", correct: false),
                            Answer(title: "Ссылочный", correct: true),
                            Answer(title: "Словарный", correct: false),
                            ]
                            ),
            Question(title: "Какие типы коллекций доступны в Swift?", type: .single, level: .third, answers: [
                            Answer(title: "Массивы", correct: false),
                            Answer(title: "Словари", correct: false),
                            Answer(title: "Наборы", correct: false),
                            Answer(title: "Все ответы верны", correct: true),
                            ]
                            ),
            Question(title: "Что означает mutatingключевое слово? ", type: .single, level: .third, answers: [
                            Answer(title: "Для измение значение свойств", correct: true),
                            Answer(title: "Для наследие свойств", correct: false),
                            Answer(title: "Для создание переменных", correct: false),
                            Answer(title: "Для отслеживание значение счетчика", correct: false),
                            ]
                            ),
            Question(title: "Optional это - ", type: .single, level: .third, answers: [
                            Answer(title: "функции, которые связаны с определенным типом.", correct: false),
                            Answer(title: "типы представляют объекты, которые могут иметь, а могут и не иметь значение", correct: true),
                            Answer(title: "типы которые точно имеют значение", correct: false),
                            Answer(title: "типы которые точно не имеют значние", correct: false),
                            ]
                            ),
            Question(title: "Что такое Enum?", type: .single, level: .third, answers: [
                            Answer(title: "Enum — это набор словарей", correct: false),
                            Answer(title: "Enum — это тип, который хранит в себе массивы", correct: false),
                            Answer(title: "Enum — это тип, который в основном содержит группу связанных значений.", correct: true),
                            Answer(title: "Никакой ответ не верный", correct: false),
                            ]
                            ),
            Question(title: "Какие языки поддерживает Xcode", type: .multiple, level: .third, answers: [
                            Answer(title: "Objective-C", correct: true),
                            Answer(title: "C++", correct: false),
                            Answer(title: "Swift", correct: true),
                            Answer(title: "Swich", correct: false),
                            ]
                            ),
            Question(title: "В приведённом списке выберите логические операторы.", type: .multiple, level: .third, answers: [
                            Answer(title: "a != b", correct: false),
                            Answer(title: "a || b", correct: true),
                            Answer(title: "a && b", correct: true),
                            Answer(title: "a == b", correct: false),
                            ]
                            )
        ]
    }
    
}

