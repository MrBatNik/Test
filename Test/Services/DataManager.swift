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
            Question(title: "Где правильно инициализируется массив со строками?", type: .single, level: .first, answers: [
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
            Question(title: "Какая связь есть в MVC?", type: .single, level: .first, answers: [
                Answer(title: "Controller-View", correct: true),
                Answer(title: "Model-View", correct: false),
                Answer(title: "View-View", correct: false),
                Answer(title: "Controller-Controller", correct: false),
            ]
                    ),
            Question(title: "Какие языки поддерживает Xcode", type: .multiple, level: .first, answers: [
                Answer(title: "Objective-C", correct: true),
                Answer(title: "C++", correct: false),
                Answer(title: "Swift", correct: true),
                Answer(title: "Swich", correct: false),
            ]
                    ),
            //            Средний уровень
            Question(title: "Можно ли для протокола создать расширение Extension?", type: .single, level: .second, answers: [
                Answer(title: "Зависит от типа протокола", correct: false),
                Answer(title: "Да", correct: true),
                Answer(title: "Нет", correct: false),
                Answer(title: "Зависит от версии iOS", correct: false),
            ]
                    ),
            Question(title: "Можно ли добавить stored property к типу, используя extension", type: .single, level: .second, answers: [
                Answer(title: "Да, в некоторых случаях", correct: false),
                Answer(title: "Нет", correct: true),
                Answer(title: "Да, всегда", correct: false),
                Answer(title: "Только в эденичных случаях", correct: false),
            ]
                    ),
            Question(title: "Уникальные значения, собранные в неупорядоченную коллекцию", type: .single, level: .second, answers: [
                Answer(title: "Все ответы верны", correct: false),
                Answer(title: "Множество", correct: true),
                Answer(title: "Массив", correct: false),
                Answer(title: "Словарь", correct: false),
            ]
                    ),
            Question(title: "В каком из вариантов правильно инициализируется пустой массив?", type: .multiple, level: .second, answers: [
                Answer(title: "var array = [Int]()", correct: true),
                Answer(title: "var array = []", correct: false),
                Answer(title: "var array: [Int] = []", correct: true),
                Answer(title: "var array = [String]", correct: false),
            ]
                    ),
            Question(title: "Что произойдёт при обращении к массиву из пяти элементов по индексу 5?", type: .single, level: .second, answers: [
                Answer(title: "Будет возвращено значение пятого элемента", correct: false),
                Answer(title: "Вернется nil", correct: false),
                Answer(title: "Возникнет ошибка исполнения", correct: true),
                Answer(title: "Будут возвращены все 5 элементов массива", correct: false),
            ]
                    ),
            Question(title: "Как Apple рекомендует открывать UITableViewController?", type: .single, level: .second, answers: [
                Answer(title: "Никак не рекомендует", correct: false),
                Answer(title: "Через UINavigationController", correct: true),
                Answer(title: "Модально", correct: false),
                Answer(title: "Через репозиторий", correct: false),
            ]
                    ),
            Question(title: "Отметьте строки программного кода, содержащие ошибки.", type: .multiple, level: .second, answers: [
                Answer(title: "let d: String = 2", correct: true),
                Answer(title: "var a: Int = 10", correct: false),
                Answer(title: "let b: String = Hello!", correct: true),
                Answer(title: "let c: Double = 20", correct: false)
            ]
                    ),
            //            Сложный уровень
            Question(title: "От какого класса наследуется UITableView?", type: .single, level: .third, answers: [
                Answer(title: "UITextView", correct: false),
                Answer(title: "UITableViewCell", correct: false),
                Answer(title: "UIScrollView", correct: true),
                Answer(title: "UIButton", correct: false),
            ]
                    ),
            Question(title: "Автоматически определяется высота ячейки через параметр...", type: .single, level: .third, answers: [
                Answer(title: "UITableViewCell.automatic", correct: false),
                Answer(title: "UITableViewCell.automaticHeight", correct: false),
                Answer(title: "UITableView.automaticDimension", correct: false),
                Answer(title: "UITableViewCell.automaticDimension", correct: true),
            ]
                    ),
            Question(title: "Каким оператором можно проверить, ссылаются ли переменные на один экземпляр? ", type: .single, level: .third, answers: [
                Answer(title: "Оператор тождественности ===", correct: true),
                Answer(title: "Оператор сравнения ==", correct: false),
                Answer(title: "Оператор присваивания =", correct: false),
                Answer(title: "Оператор is", correct: false),
            ]
                    ),
            Question(title: "В приведённом списке выберите составные операторы присваивания", type: .multiple, level: .third, answers: [
                Answer(title: "!=", correct: false),
                Answer(title: "===", correct: false),
                Answer(title: "+=", correct: true),
                Answer(title: "%=", correct: true),
            ]
                    ),
            Question(title: "Внутри каждого случая switch-case обязательно должно содержаться это:", type: .single, level: .third, answers: [
                Answer(title: "Условие", correct: false),
                Answer(title: "Сравнение", correct: false),
                Answer(title: "Исполняемое выражение", correct: true),
                Answer(title: "break", correct: false)
            ]
                    ),
            Question(title: "В каком параметре хранится текущее значение UISlider?", type: .single, level: .third, answers: [
                Answer(title: "minValue", correct: false),
                Answer(title: "parameter", correct: false),
                Answer(title: "value", correct: true),
                Answer(title: "currentValue", correct: false),
            ]
                    ),
            Question(title: "Выберете два правильных варианта создания словаря", type: .multiple, level: .third, answers: [
                Answer(title: "var phones: Dictionary(String, String) = [:]", correct: false),
                Answer(title: "var phones: Dictionary = [:]", correct: false),
                Answer(title: "var phones: [String: String] = [:]", correct: true),
                Answer(title: "var phones: Dictionary<String, String> = [:]", correct: true),
            ]
                    )
        ]
    }
    
}

