//
//  EducationViewController.swift
//  AboutMeApp
//
//  Created by Goodwasp on 10.05.2023.
//

import UIKit

class EducationViewController: UIViewController {
    // MARK: IBOutlets
    @IBOutlet var typeOne: UILabel!
    @IBOutlet var typeTwo: UILabel!
    @IBOutlet var typeThree: UILabel!
    
    
    @IBOutlet var placeOneLabel: UILabel!
    @IBOutlet var placeTwoLabel: UILabel!
    @IBOutlet var placeThreeLabel: UILabel!
    
    @IBOutlet var specialityOneLabel: UILabel!
    @IBOutlet var specialityTwoLabel: UILabel!
    @IBOutlet var specialityThreeLabel: UILabel!
    
    
    var educations: [Institution]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        typeOne.text = educations[0].type == .university ? "🏫" : "🎓"
        typeTwo.text = educations[1].type == .university ? "🏫" : "🎓"
        typeThree.text = educations[2].type == .university ? "🏫" : "🎓"
        
        placeOneLabel.text = educations[0].place + " / " + educations[0].location
        placeTwoLabel.text = educations[1].place + " / " + educations[1].location
        placeThreeLabel.text = educations[2].place + " / " + educations[2].location
        
        specialityOneLabel.text = "\(educations[0].speciality) / \(educations[0].beginingYear) – \(educations[0].endYear)"
        specialityTwoLabel.text = "\(educations[1].speciality) / \(educations[1].beginingYear) – \(educations[1].endYear)"
        specialityThreeLabel.text = "\(educations[2].speciality) / \(educations[2].beginingYear) – \(educations[2].endYear)"
    }
}
