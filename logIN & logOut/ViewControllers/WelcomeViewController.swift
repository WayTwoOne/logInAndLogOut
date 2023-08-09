//
//  WelcomeViewController.swift
//  logIN & logOut
//
//  Created by Vladimir on 29.05.2023.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    var toLabel: String! = ""
    
    @IBOutlet weak var welcomeLabel: UILabel!
    
    override func viewDidLoad() {
        welcomeLabel.text = toLabel
    }
    
    override func unwind(for unwindSegue: UIStoryboardSegue, towards subsequentVC: UIViewController) {
        guard let loginVC = unwindSegue.source as? LoginViewController else { return }
        loginVC.userTextFIeld.text = ""
        loginVC.userTextFIeld.text = ""
        
        dismiss(animated: true)
    }
    @IBAction func logOutBUttonPressed() {
    }
}
