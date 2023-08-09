//
//  WithButtonViewController.swift
//  logIN & logOut
//
//  Created by Vladimir on 01.06.2023.
//

import UIKit

class WithButtonViewController: UIViewController {
    var toMoreInfo: String = ""
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let moreInfoVC = segue.destination as? MoreInfoViewController else { return }
        moreInfoVC.fromWithBottonVC = toMoreInfo
    }
}
