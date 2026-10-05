//
//  ViewController.swift
//  CampusCompanion
//
//  Created by MANACOP, GENE ANDREI on 10/5/26.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        titleLabel.text = "Campus Companion"
    }
    
    @IBAction func getStartedButton(_ sender: Any) {
        titleLabel.text = "Let's get started!"
    }
    


}

