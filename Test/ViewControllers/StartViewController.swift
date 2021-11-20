//
//  QuizViewController.swift
//  Test
//
//  Created by Никита Бат on 13.11.2021.
//

import UIKit

class StartViewController: UIViewController {
    
    @IBOutlet var levelSegmentedControl: UISegmentedControl!
    
    var userName: String!
    private let questions = Question.getQuestions()
    private let levels: [String] = [
        Level.first.rawValue,
        Level.second.rawValue,
        Level.third.rawValue
    ]
    private var level: Level!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        for index in 0..<levels.count {
            levelSegmentedControl.setTitle(levels[index], forSegmentAt: index)
        }
        
        level = .first
    }
    
    @IBAction func didChangeSegment() {
        switch levelSegmentedControl.selectedSegmentIndex {
        case 0: level = .first
        case 1: level = .second
        case 2: level = .third
        default: break
        }
    }
    
    @IBAction func unwind(for unwindSegue: UIStoryboardSegue) {
        self.tabBarController?.tabBar.isHidden = false
    }
    
}

extension StartViewController {
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let nextViewController = segue.destination as? QuestionsViewController else { return }
        
        nextViewController.questions = questions.filter{ $0.level == level }
    }
}

