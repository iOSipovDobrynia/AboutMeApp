//
//  AboutViewController.swift
//  AboutMeApp
//
//  Created by Goodwasp on 10.05.2023.
//

import UIKit

class AboutViewController: UIViewController {

    @IBOutlet var shortDescriptionLabel: UILabel!
    @IBOutlet var lastUpdateLabel: UILabel!
    
    private let user = User.getUser()
    
    var shortDescription: String!
    var lastUpdate: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        shortDescriptionLabel.text = shortDescription
        lastUpdateLabel.text = lastUpdate
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let tabBarVC = segue.destination as? UITabBarController else { return }
        guard let viewControllers = tabBarVC.viewControllers else { return }
        
        viewControllers.forEach { viewController in
            if let bioVC = viewController as? BioViewController {
                bioVC.biography = user.person.biography
            } else if let interesVC = viewController as? InterestsViewController {
                
            } else if let educationVC = viewController as? EducationViewController {
                
            }
        }
    }
}
