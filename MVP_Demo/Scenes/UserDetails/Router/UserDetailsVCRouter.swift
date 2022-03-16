//
//  UserDetailsVCRouter.swift
//  MVP_Demo
//
//  Created by Mohamed Hasseb on 16/03/2022.
//

import UIKit

class UserDetailsVCRouter {
    
    class func createUserDetailsVC(user: User) -> UIViewController {
        
        let userDetailsVC = mainStoryboard.instantiateViewController(withIdentifier: "UserDetailsVC")
        if let userDetailsView = userDetailsVC as? UserDetailsView {
            let presenter = UserDetailsVCPresenter(userDetailsView: userDetailsView, user: user)
            userDetailsView.presenter = presenter
        }
        return userDetailsVC
    }
    
    class var mainStoryboard: UIStoryboard {
        return UIStoryboard(name: "Main", bundle: Bundle.main)
    }
}
