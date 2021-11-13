//
//  ResultTableViewController.swift
//  Test
//
//  Created by Никита Бат on 13.11.2021.
//

import UIKit

class ResultTableViewController: UITableViewController {
    
    private let questions = Question.getQuestions()
    var answers: [Answer]!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.hidesBackButton = true
        self.tabBarController?.tabBar.isHidden = true
        title = "Результат: \(scoreCount(from: answers)) из \(questions.count)"
        
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        answers.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        questions[section].answers.count
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        questions[section].text
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "resultCell", for: indexPath)
        var components = cell.defaultContentConfiguration()
        
        switch indexPath.row {
            case 0:
                components.text = questions[indexPath.section].answers[indexPath.row].text
                components.image = setImage(for: indexPath)
                cell.backgroundColor = setBackgroundColor(for: indexPath)
                cell.contentConfiguration = components
            case 1:
                components.text = questions[indexPath.section].answers[indexPath.row].text
                components.image = setImage(for: indexPath)
                cell.backgroundColor = setBackgroundColor(for: indexPath)
                cell.contentConfiguration = components
            default:
                components.text = questions[indexPath.section].answers[indexPath.row].text
                components.image = setImage(for: indexPath)
                cell.backgroundColor = setBackgroundColor(for: indexPath)
                cell.contentConfiguration = components
        }

        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    private func setImage(for indexPath: IndexPath) -> UIImage {
        if answers[indexPath.section].text == questions[indexPath.section].answers[indexPath.row].text {
            return UIImage(systemName: "checkmark.circle") ?? UIImage()
        }
        return UIImage(systemName: "poweroff") ?? UIImage()
    }

    private func setBackgroundColor(for indexPath: IndexPath) -> UIColor {
            if questions[indexPath.section].answers[indexPath.row].type == .right {
                return .systemGreen
            }else if answers[indexPath.section].text == questions[indexPath.section].answers[indexPath.row].text {
                return .systemRed
            }
        return .systemBackground
    }
    
    private func scoreCount(from arrayOf: [Answer]) -> Int {
        arrayOf.filter { $0.type == .right }
        .count
    }

}
