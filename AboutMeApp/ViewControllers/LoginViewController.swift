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
    
    private let user = User.getUser()
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let tabBarVC = segue.destination as? UITabBarController else { return }
        guard let viewControllers = tabBarVC.viewControllers else { return }
        
        viewControllers.forEach { viewController in
            if let welcomeVC = viewController as? WelcomeViewController {
                welcomeVC.greeting = "Hi, \(user.login)"
            } else if let navigationVC = viewController as? UINavigationController {
                guard let aboutVC = navigationVC.topViewController as? AboutViewController else { return }
                aboutVC.navigationItem.title = user.person.fullName
                aboutVC.shortDescription = user.person.shortDescription
                aboutVC.lastUpdate = "last update: \(user.person.lastUpdate)"
                
//                guard let infoTabBarVC =
            }
        }
    }
    
    // MARK: IBActions
    @IBAction func forgotButtonPressed(_ sender: UIButton) {
        sender.tag == 0
        ? showAlert(withTitle: "Hi", andMessage: "Your User Name is \(user.login)")
        : showAlert(withTitle: "Hi", andMessage: "Your Password is \(user.password)")
    }
    
    @IBAction func loginButtonPressed() {
        guard userNameTF.text == user.login && passwordTF.text == user.password else {
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
