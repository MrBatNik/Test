//
//  LoginViewController.swift
//  Test
//
//  Created by Никита Бат on 13.11.2021.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet var nameTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
  
    private var userName = ""
    private var password = "Xcode"
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let tabBarController = segue.destination as? UITabBarController else {return}
        guard let tabBarControllers = tabBarController.viewControllers else {return}
        
        for viewController in tabBarControllers {
            if let navigationVC = viewController as? UINavigationController {
                let startVC = navigationVC.topViewController as! StartViewController
                userName = nameTF.text ?? "incognito"
                startVC.userName = userName
            }
        }
    }
    
    @IBAction func goButtonPressed() {
        guard passwordTF.text == password
            else {
            showAlert(title: "Invalid password", message: "Please try again")
            return
        }
            guard let inputText = nameTF.text, !inputText.isEmpty else {
            showAlert(title: "Text field is empty", message: "Please enter your name")
            return
        }
    }

    @IBAction func PasswordHint() {
        showAlert(title: "Ответь на вопрос:", message: "Как называется среда разработки программного обеспечения для платформ macOS, iOS, watchOS и tvOS?")
    }

}

extension LoginViewController {
    
    private func showAlert(title: String, message: String, textField: UITextField? = nil) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            textField?.text = ""
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
    
}

extension LoginViewController: UITextFieldDelegate {
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == nameTF {
            passwordTF.becomeFirstResponder()
        } else {
            goButtonPressed()
            performSegue(withIdentifier: "showStartVC", sender: nil)
        }
        return true
    }
    
}
