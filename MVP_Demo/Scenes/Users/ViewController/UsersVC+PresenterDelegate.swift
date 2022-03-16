//
//  UsersVC+PresenterDelegate.swift
//  MVP_Demo
//
//  Created by Mohamed Hasseb on 13/03/2022.
//

import Foundation
import SKActivityIndicatorView

extension UsersVC: UsersView {
    
    func showIndicator() {
       // SKActivityIndicator.show()
    }
    
    func hideIndicator() {
       // SKActivityIndicator.dismiss()
    }
    
    func fetchingDataSuccess() {
        usersTableView.reloadData()
    }
    
    func showError(error: String) {
        print(error)
    }
    /*
     Code Smell!!  View Start Reference Model.
     */
    func navigateToUserDetailsScreen(user: User) {
        navigationController?.pushViewController(UIViewController(), animated: true)
    }
}
