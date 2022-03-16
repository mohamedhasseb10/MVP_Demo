//
//  UserDetailsVC.swift
//  MVP_Demo
//
//  Created by Mohamed Hasseb on 16/03/2022.
//

import UIKit

class UserDetailsVC: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var addressTextField: UITextField!
    
    var presenter: UserDetailsVCPresenter?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter?.viewDidLoad()
    }
}
