//
//  DetailViewController.swift
//  CampusCompanion
//
//  Created by MANACOP, GENE ANDREI on 10/12/26.
//

import UIKit

class DetailViewController: UIViewController {
    @IBOutlet weak var messageLabel: UILabel!
    var studentName: String = ""
    var notificationsEnabled: Bool = false
    var selectedRole: String = ""
    var eventDateString: String = ""
    var guestCount: Int = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Campus Events"
        
        let notificationStatus = notificationsEnabled ? "on" : "off"
        messageLabel.text = """
            Welcome, \(studentName)! (\(selectedRole))
            Notifications: \(notificationStatus)
            Event: \(eventDateString)
            Guests: \(guestCount)
            """
        
    }
}
