//
//  ResultTableViewController.swift
//  Test
//
//  Created by Никита Бат on 13.11.2021.
//

import UIKit

class ResultTableViewController: UITableViewController {
    
    @IBOutlet var resultLabel: UILabel!
    
    var questions: [Question]!
    var answers: [Answer]!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.hidesBackButton = true
        self.tabBarController?.tabBar.isHidden = true
        title = "Результат: \(scoreCount(from: answers)) из \(questions.count)"
        resultLabel.text = setResultLabel()
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        questions.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        questions[section].answers.count
    }
    
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let headerView: UITableViewHeaderFooterView = {
            let header = UITableViewHeaderFooterView()
            header.translatesAutoresizingMaskIntoConstraints = false
            return header
        }()

        let headerLabel: UILabel = {
            let label = UILabel()
            label.numberOfLines = 0
            label.sizeToFit()
            label.translatesAutoresizingMaskIntoConstraints = false
            return label
        }()
        
        headerLabel.text = questions[section].title
        headerView.contentView.addSubview(headerLabel)
        
        NSLayoutConstraint.activate([
            headerLabel.leadingAnchor.constraint(equalTo: headerView.contentView.leadingAnchor, constant: 16),
            headerLabel.trailingAnchor.constraint(equalTo: headerView.contentView.trailingAnchor, constant: -16),
            headerLabel.topAnchor.constraint(equalTo: headerView.contentView.topAnchor, constant: 16),
            headerLabel.bottomAnchor.constraint(equalTo: headerView.contentView.bottomAnchor, constant: -16)
        ])
        
        return headerView
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let resultCell = tableView.dequeueReusableCell(withIdentifier: "resultCell", for: indexPath)
        var components = resultCell.defaultContentConfiguration()
        
        switch indexPath.row {
            case 0:
                components.text = questions[indexPath.section].answers[indexPath.row].title
                components.image = setImage(for: indexPath)
                resultCell.backgroundColor = setBackgroundColor(for: indexPath)
                resultCell.contentConfiguration = components
            case 1:
                components.text = questions[indexPath.section].answers[indexPath.row].title
                components.image = setImage(for: indexPath)
                resultCell.backgroundColor = setBackgroundColor(for: indexPath)
                resultCell.contentConfiguration = components
            case 3:
                components.text = questions[indexPath.section].answers[indexPath.row].title
                components.image = setImage(for: indexPath)
                resultCell.backgroundColor = setBackgroundColor(for: indexPath)
                resultCell.contentConfiguration = components
            default:
                components.text = questions[indexPath.section].answers[indexPath.row].title
                components.image = setImage(for: indexPath)
                resultCell.backgroundColor = setBackgroundColor(for: indexPath)
                resultCell.contentConfiguration = components
        }

        return resultCell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }

}

extension ResultTableViewController {
    
    private func setImage(for indexPath: IndexPath) -> UIImage {
        if answers[indexPath.section].title == questions[indexPath.section].answers[indexPath.row].title {
            return UIImage(systemName: "checkmark.circle") ?? UIImage()
        }
        return UIImage(systemName: "poweroff") ?? UIImage()
    }
    
    private func setBackgroundColor(for indexPath: IndexPath) -> UIColor {
            if questions[indexPath.section].answers[indexPath.row].correct {
                return .systemGreen
            }else if answers[indexPath.section].title == questions[indexPath.section].answers[indexPath.row].title {
                return .systemRed
            }
        return .systemBackground
    }
    
    private func scoreCount(from arrayOf: [Answer]) -> Int {
        arrayOf.filter { $0.correct }
        .count
    }
    
    private func setResultLabel() -> String {
        let finalScore = scoreCount(from: answers)
        var juniorLevel: Junior = .beginner
        
        if finalScore == questions.count {
            juniorLevel = .master
            return "\(juniorLevel.rawValue)\n\(juniorLevel.definition)"
        } else if (5...6).contains(finalScore) {
            juniorLevel = .intermediate
            return "\(juniorLevel.rawValue)\n\(juniorLevel.definition)"
        } else if (2...4).contains(finalScore){
            juniorLevel = .elementary
            return "\(juniorLevel.rawValue)\n\(juniorLevel.definition)"
        }
        
        return "\(juniorLevel.rawValue)\n\(juniorLevel.definition)"
    }
    
}
