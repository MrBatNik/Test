//
//  QuizViewController.swift
//  Test
//
//  Created by Никита Бат on 13.11.2021.
//

import UIKit

class QuizViewController: UIViewController {
    
    @IBOutlet var yesButton: UIButton!
    @IBOutlet var noButton: UIButton!
    
    var questions: [Question]!
    private var chosenAnswers:[Answer] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.hidesBackButton = true
        self.tabBarController?.tabBar.isHidden = true
    }
    
    @IBAction func didTapYes(_ sender: Any) {
        for index in 0..<questions.count {
            chosenAnswers.append(questions[index].answers[0])
        }
        performSegue(withIdentifier: "showResults", sender: nil)
    }
    
    @IBAction func didTapNo(_ sender: Any) {
        for index in 0..<questions.count {
            chosenAnswers.append(questions[index].answers[2])
        }
        performSegue(withIdentifier: "showResults", sender: nil)
    }

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let resultViewController = segue.destination as? ResultTableViewController else { return }
        
        resultViewController.questions = questions
        resultViewController.answers = chosenAnswers
    }

}
