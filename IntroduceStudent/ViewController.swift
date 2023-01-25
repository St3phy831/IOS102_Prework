//
//  ViewController.swift
//  IntroduceStudent
//
//  Created by Stephanie Hernandez on 1/24/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var firstNamefield: UITextField!
    @IBOutlet weak var lastNamefield: UITextField!
    @IBOutlet weak var schoolNameField: UITextField!
    @IBOutlet weak var yearSegmentedControl: UISegmentedControl!
    @IBOutlet weak var numOfPetsLabel: UILabel!
    @IBOutlet weak var petStepper: UIStepper!
    @IBOutlet weak var morePetsSwitch: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func introduceWasTapped(_ sender: UIButton) {
    }
    
    @IBAction func stepperDidChange(_ sender: UIStepper) {
    }
}

