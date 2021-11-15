//
//  QuizViewController.swift
//  Test
//
//  Created by Никита Бат on 13.11.2021.
//

import UIKit

class StartViewController: UIViewController {
    
    @IBOutlet var levelSegmentedControl: UISegmentedControl!
    
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
            default: level = .third
        }
    }
    
    @IBAction func unwind(for unwindSegue: UIStoryboardSegue) {
        self.tabBarController?.tabBar.isHidden = false
    }

}

extension StartViewController {
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let nextViewController = segue.destination as? QuizViewController else { return }
        
        switch level {
            case .first:
                nextViewController.questions = questions.filter { $0.level == .first }
            case .second:
                nextViewController.questions = questions.filter { $0.level == .second }
            default:
                nextViewController.questions = questions.filter { $0.level == .third }
        }
    }
    
}
