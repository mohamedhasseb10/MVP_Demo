//
//  UserDetailsVC+PresenterDelegate.swift
//  MVP_Demo
//
//  Created by Mohamed Hasseb on 16/03/2022.
//

import Foundation

extension UserDetailsVC: UserDetailsView {
    
    func displayName(name: String) {
        nameTextField.text = name
    }
    
    func displayEmail(email: String) {
        emailTextField.text = email
    }
    
    func displayAddress(address: String) {
        addressTextField.text = address
    }
    
    
}
