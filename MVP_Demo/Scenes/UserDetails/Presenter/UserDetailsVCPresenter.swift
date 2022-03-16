//
//  UserDetailsVCPresenter.swift
//  MVP_Demo
//
//  Created by Mohamed Hasseb on 16/03/2022.
//

import Foundation

protocol UserDetailsView: AnyObject {
    
    var presenter: UserDetailsVCPresenter? { get set }
    func displayName(name: String)
    func displayEmail(email: String)
    func displayAddress(address: String)
    
}

class UserDetailsVCPresenter {
    
    private weak var view: UserDetailsView?
    private var user: User
    
    init(userDetailsView: UserDetailsView?, user: User) {
        self.view = userDetailsView
        self.user = user
    }
    
    
    func viewDidLoad() {
        view?.displayName(name: user._name)
        view?.displayEmail(email: user._email)
        view?.displayAddress(address: "\(user._address._street) \(user._address._suite)")
    }
}
