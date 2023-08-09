//
//  MoreInfoViewController.swift
//  logIN & logOut
//
//  Created by Vladimir on 01.06.2023.
//

import UIKit

class MoreInfoViewController: UIViewController {

    var fromWithBottonVC: String = ""
    @IBOutlet weak var info: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .darkGray
        info.text = fromWithBottonVC
    }
}
