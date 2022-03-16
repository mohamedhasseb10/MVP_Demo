//
//  ViewController.swift
//  MVP_Demo
//
//  Created by Mohamed Hasseb on 11/03/2022.
//

import UIKit

class UsersVC: UIViewController {
    @IBOutlet weak var usersTableView: UITableView!
    var presenter: UsersVCPresenter?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTableView()
        presenter?.viewDidLoad()
        
    }
}

