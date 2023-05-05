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
        if userNameTF.text != userName || passwordTF.text != password {
            showAlert(
                withTitle: "Incorrect login or password",
                andMessage: "Please, enter correct values"
            )
            passwordTF.text = ""
        }
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
        let okAction = UIAlertAction(title: "OK", style: .default)
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}
