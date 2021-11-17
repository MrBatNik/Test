//
//  QuizViewController.swift
//  Test
//
//  Created by Никита Бат on 13.11.2021.
//

import UIKit

class StartViewController: UIViewController {
    
    var userName = ""

    @IBOutlet var welcomeLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeLabel.text = "Привет, \(userName)! Выбери уровень сложности:"
    }

    @IBAction func unwind(for unwindSegue: UIStoryboardSegue) {}

}
