//
//  UsersViewModel.swift
//  BuildMe_Entrenador
//
//  Created by Alejandro Rodríguez Cañete on 9/5/24.
//

import Foundation
import FirebaseDatabase

protocol UsersDelegate {
    func showActivityIndicator()
    func hideActivityIndicator()
    func didFetchUsers()
}

class UsersViewModel {
    
    // MARK: - Variables
    let ref = Database.database().reference().child(Constants.athleteChild)
    var athletes: [User]?
    var delegate: UsersDelegate?
    
    init() {
        getUsers()
    }
    
    // MARK: - Functions
    func numberOfRows() -> Int {
        return athletes?.count ?? 0
    }
    
    func getUser(at index: Int) -> User? {
        return athletes?[index]
    }
    
    // MARK: - Private Functions
    private func getUsers() {
        delegate?.showActivityIndicator()
        
        ref.observeSingleEvent(of: .value) { snapshot in
            var unwrappedAthletes = [User]()
            
            for child in snapshot.children {
                if let snapshot = child as? DataSnapshot,
                   let userData = snapshot.value as? [String: Any] {
                    if let user = self.castToUser(from: userData) {
                        unwrappedAthletes.append(user)
                        print("User -> \(user.name)")
                    }
                }
            }
            self.athletes = unwrappedAthletes
            self.delegate?.didFetchUsers()
            self.delegate?.hideActivityIndicator()
        }
    }
    
    private func castToUser(from dictionary: [String: Any]) -> User? {
        do {
            let data = try JSONSerialization.data(withJSONObject: dictionary, options: [])
            let decoder = JSONDecoder()
            let user = try decoder.decode(User.self, from: data)
            return user
        } catch {
            print("Error casting data to User: \(error)")
            return nil
        }
    }
}

