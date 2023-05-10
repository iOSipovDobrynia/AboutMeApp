//
//  InterestsViewController.swift
//  AboutMeApp
//
//  Created by Goodwasp on 10.05.2023.
//

import UIKit

class InterestsViewController: UIViewController {

    @IBOutlet var imageInteresOne: UILabel!
    @IBOutlet var imageInteresTwo: UILabel!
    @IBOutlet var imageInteresThree: UILabel!
    
    @IBOutlet var interesOneLabel: UILabel!
    @IBOutlet var interesTwoLabel: UILabel!
    @IBOutlet var interesThreeLabel: UILabel!
    
    var interesOne: Interes!
    var interesTwo: Interes!
    var interesThree: Interes!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageInteresOne.text = String(interesOne.image)
        interesOneLabel.text = interesOne.label
        
        imageInteresTwo.text = String(interesTwo.image)
        interesTwoLabel.text = interesTwo.label
        
        imageInteresThree.text = String(interesThree.image)
        interesThreeLabel.text = interesThree.label
    }
}
