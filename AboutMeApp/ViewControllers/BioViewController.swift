//
//  BioViewController.swift
//  AboutMeApp
//
//  Created by Goodwasp on 10.05.2023.
//

import UIKit

class BioViewController: UIViewController {
    // MARK: IBOutlets
    @IBOutlet var biographyLabel: UILabel!
    
    var biography: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        biographyLabel.text = biography
    }
}
