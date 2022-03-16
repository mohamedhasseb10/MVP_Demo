//
//  UserInteractor.swift
//  MVP_Demo
//
//  Created by Mohamed Hasseb on 11/03/2022.
//

import Foundation
import Alamofire
import AlamofireObjectMapper

class UsersInteractor {
    
    func getUsers(completionHandler: @escaping ([User]?, Error?) -> ()) {
        request("https://jsonplaceholder.typicode.com/users").responseArray {
            (response: DataResponse<[User]>) in
            let result = response.result
            switch result {
            case .success(let users):
                completionHandler(users, nil)
            case .failure(let error):
                completionHandler(nil, error)
            }
        }
    }
}
