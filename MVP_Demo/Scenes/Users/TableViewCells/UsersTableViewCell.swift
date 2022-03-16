//
//  UsersTableViewCell.swift
//  MVP_Demo
//
//  Created by Mohamed Hasseb on 11/03/2022.
//

import UIKit

class UsersTableViewCell: UITableViewCell, UserCellView {
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var addressLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        selectionStyle = .none
    }
    
    func displayName(name: String) {
        nameLabel.text = name
    }
    
    func displayEmail(email: String) {
        emailLabel.text = email
    }
    
    func displayAddress(address: String) {
        addressLabel.text = address
    }
    
}
