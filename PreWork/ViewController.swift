//
//  ViewController.swift
//  PreWork
//
//  Created by Daven Gujral on 1/11/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var morePetsSwitch: UISwitch!
    @IBOutlet weak var morePetsStepper: UIStepper!
    @IBOutlet weak var firstNameTextField: UITextField!
    @IBOutlet weak var lastNameTextField: UITextField!
    @IBOutlet weak var schoolTextField: UITextField!
    
    @IBOutlet weak var yearSegmentedControl: UISegmentedControl!
    
    @IBOutlet weak var numberOfPetsLabel: UILabel!
    @IBOutlet weak var stepperDidChange: UILabel!
    
    @IBOutlet weak var introduceButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func stepperDidChange(_ sender: UIStepper) {
        numberOfPetsLabel.text = "\(Int(sender.value))"
    }
    
    @IBAction func introduceSelf(_ sender: UIButton) {
        let year = yearSegmentedControl.titleForSegment(at: yearSegmentedControl.selectedSegmentIndex)

        let introduction = "My name is \(firstNameTextField.text!)\(lastNameTextField.text!) and I attend \(schoolTextField.text!). I am currently in my \(year!) year and I own \(numberOfPetsLabel.text!) dogs. It is \(morePetsSwitch.isOn) that I want more pets."
        
        let alertController = UIAlertController(title: "My introduction", message: introduction,preferredStyle: .alert)
        let action = UIAlertAction(title: "Nice to meet you", style: .default,handler: nil)
        alertController.addAction(action)
        present(alertController, animated: true,completion: nil)
    }
    
    
    


}

