//
//  ViewController.swift
//  logIN & logOut
//
//  Created by Vladimir on 29.05.2023.
//

import UIKit

class LoginViewController: UIViewController {
    
    private let user = "user"
    private let password = "123"
    private let fullName = "Vladimir Zakharov"
    let informationAboutMe = "Я родился в Москве, сейчас 2023 год и я живу в Белграде - столица Сербии. Иногда тут бывает грустно и одиноко, но когда занимаешься делом, что тебя действительно радует и увлекает - время пролетает незаметно и с пользой. Сейчас ищу работу здесь или удаленно в Москве."
    
    @IBOutlet weak var userTextFIeld: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .darkGray
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let tabBarVC = segue.destination as? UITabBarController else { return }
        guard let viewControllers = tabBarVC.viewControllers else { return }
        
        for viewController in viewControllers {
            if let welcomeVC = viewController as? WelcomeViewController {
                welcomeVC.toLabel = "Welcome, \(fullName)"
                welcomeVC.title = "Hello !"
                welcomeVC.view.backgroundColor = .darkGray
            } else if let navigationVC = viewController as? UINavigationController {
                guard let navigationTopVC = navigationVC.topViewController as? WithButtonViewController else { return }
                navigationTopVC.title = fullName
                navigationTopVC.view.backgroundColor = .darkGray
                navigationTopVC.toMoreInfo = informationAboutMe
                }
            }
        }
        
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    
    // MARK: IBActions

    @IBAction func logInButtonPressed() {
        if userTextFIeld.text == user && passwordTextField.text == password {
        } else {
            showAlertMessage(title: "Oooops", message: "Your user name or your password isn't correct")
            passwordTextField.text = ""
        }
        view.endEditing(true)
    }
    
    @IBAction func unwindSegue(_ segue: UIStoryboardSegue) {
        userTextFIeld.text = ""
        passwordTextField.text = ""
    }
    
    @IBAction func userWarningBUttonPressed() {
        showAlertMessage(title: "Oooops!", message: "Your user name: \(user)")
    }
    
    @IBAction func passwordWarningButtonPressed() {
        showAlertMessage(title: "Ooosps!", message: "Your password: \(password)")
    }
    
    // MARK: Private func
    
    private func showAlertMessage(title:String, message:String) {
           let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
           let action = UIAlertAction(title: "Okey", style: .default)
           alert.addAction(action)
           
           present(alert, animated: true)
       }
}
    	

//if let navigationVC = viewController as? UINavigationController {
//    guard let viewControllers = navigationVC.viewControllers else {return }
//    for controller in viewControllers {
//        if let withBottonVC = controller as? WithButtonViewController {
//            withBottonVC.view.backgroundColor = .darkGray
//        } else if let moreInfoVC = controller as? MoreInfoViewController {
//            moreInfoVC.fromLogicVC = informationAboutMe
//            moreInfoVC.view.backgroundColor = .darkGray
//        }
//    }
//}
