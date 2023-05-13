//
//  WelcomeViewController.swift
//  AboutMeApp
//
//  Created by Goodwasp on 04.05.2023.
//

import UIKit

class WelcomeViewController: UIViewController {
    // MARK: IBOutlets
    @IBOutlet var greetingLabel: UILabel!
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        greetingLabel.text = "Hi, \(user.login)"
    }
}
