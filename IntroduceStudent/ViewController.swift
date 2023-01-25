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
        let year = yearSegmentedControl.titleForSegment(at: yearSegmentedControl.selectedSegmentIndex)
        // force unwrapping (certain when value exists)
        let introduction = "My name is \(firstNamefield.text!) \(lastNamefield.text!), and I attend \(schoolNameField.text!). I am currently in my \(year!) year, and I own \(numOfPetsLabel.text!) dog(s). It is \(morePetsSwitch.isOn) that I want more pets."
        // creates the alert
        let alertController = UIAlertController(title: "My Introduction", message: introduction, preferredStyle: .alert)
        // way to dissmiss alert
        let action = UIAlertAction(title: "Nice to meet you!", style: .default, handler: nil)
        // adding action to controller to use
        alertController.addAction(action)
        present(alertController, animated: true, completion: nil)
    }
    
    @IBAction func stepperDidChange(_ sender: UIStepper) {
        numOfPetsLabel.text = "\(Int(sender.value))"
    }
}

