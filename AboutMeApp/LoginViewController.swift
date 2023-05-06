//
//  ViewController.swift
//  AboutMeApp
//
//  Created by Goodwasp on 04.05.2023.
//

import UIKit

class LoginViewController: UIViewController {
    // MARK: IBOutlets
    @IBOutlet var userNameTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    
    private let userName = "Dobrynia"
    private let password = "Osipov"
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC = segue.destination as? WelcomeViewController else { return }
        welcomeVC.greeting = "Hi, \(userName)"
        
    }
    
    // MARK: IBActions
    @IBAction func forgotNameButtonPressed() {
        showAlert(withTitle: "Hi", andMessage: "Your User Name is \(userName)")
    }
    @IBAction func forgotPasswordButtonPressed() {
        showAlert(withTitle: "Hi", andMessage: "Your Password is \(password)")
    }
    @IBAction func loginButtonPressed() {
        guard userNameTF.text == userName || passwordTF.text == password else {
            showAlert(
                withTitle: "Incorrect login or password",
                andMessage: "Please, enter correct values"
            )
            return
        }
        
        performSegue(withIdentifier: "showWelcomeVC", sender: nil)
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        userNameTF.text = ""
        passwordTF.text = ""
    }
}

// MARK: UIAlertController
extension LoginViewController {
    private func showAlert(withTitle title: String, andMessage message: String) {
        let alert = UIAlertController(
            title: title,
            message: message,
            preferredStyle: .alert
        )
        let okAction = UIAlertAction(title: "OK", style: .default) {_ in
            self.passwordTF.text = ""
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}
