//
//  ViewController.swift
//  CampusCompanion
//
//  Created by MANACOP, GENE ANDREI on 10/5/26.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var subtitleLabel: UILabel!
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var notifySwitch: UISwitch!
    @IBOutlet weak var roleSegmentedControl: UISegmentedControl!
    
    @IBOutlet weak var eventDatePicker: UIDatePicker!
    @IBOutlet weak var guestStepper: UIStepper!
    @IBOutlet weak var guestCountLabel: UILabel!
    
    @IBAction func start(_ sender: Any) {
        subtitleLabel.text = "Let's get started!"
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        titleLabel.text = "Campus Companion"
        
        guestStepper.value = 1
        guestCountLabel.text = "Guests: 1"
    }
    
    @IBAction func stepperValueChanged(_ sender: UIStepper) {
        guestCountLabel.text = "Guests: \(Int(sender.value))"
    }
    
    @IBAction func exploreButtonTapped(_ sender: UIButton) {
        nameTextField.resignFirstResponder()
        performSegue(withIdentifier: "ShowDetailSegue", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard segue.identifier == "ShowDetailSegue",
              let destination = segue.destination as? DetailViewController else { return
        }
        
        let enteredName = nameTextField.text ?? ""
        destination.studentName = enteredName
        destination.notificationsEnabled = notifySwitch.isOn
        destination.selectedRole = (roleSegmentedControl.selectedSegmentIndex == 0) ? "Student" : "Faculty"
        
        let formatter = DateFormatter()
        formatter.dateStyle = .medium
        destination.eventDateString = formatter.string(from: eventDatePicker.date)
        destination.guestCount = Int(guestStepper.value)
        
        
    }
    
    

    

}

