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
    
    var shortDescription: String!
    var lastUpdate: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        shortDescriptionLabel.text = shortDescription
        lastUpdateLabel.text = lastUpdate
    }
    
    
}
