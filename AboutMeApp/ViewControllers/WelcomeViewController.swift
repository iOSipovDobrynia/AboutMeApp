//
//  WelcomeViewController.swift
//  AboutMeApp
//
//  Created by Goodwasp on 04.05.2023.
//

import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet var greetingLabel: UILabel!
    
    var greeting: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        greetingLabel.text = greeting
    }
}
