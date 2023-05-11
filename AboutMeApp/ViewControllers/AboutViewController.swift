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
    
    var user: User!
    
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
                interesVC.interesOne = user.person.interests[0]
                interesVC.interesTwo = user.person.interests[1]
                interesVC.interesThree = user.person.interests[2]
            } else if let educationVC = viewController as? EducationViewController {
                educationVC.educations = user.person.education
            }
        }
    }
}
