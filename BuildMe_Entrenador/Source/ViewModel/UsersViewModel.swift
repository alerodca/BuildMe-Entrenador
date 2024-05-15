//
//  UsersViewModel.swift
//  BuildMe_Entrenador
//
//  Created by Alejandro Rodríguez Cañete on 9/5/24.
//

import Foundation
import FirebaseDatabase

protocol PrincipalTableDelegate {
    func showActivityIndicator()
    func hideActivityIndicator()
    func didFetchUsers()
}

protocol UsersFilterDelegate {
    func didFilterUsers(filteredAthletes: [Athlete])
}

class UsersViewModel {
    
    // MARK: - Variables
    let ref = Database.database().reference().child(Constants.athleteChild)
    var athletes: [Athlete]?
    var filteredAthletes: [Athlete]?
    var delegate: PrincipalTableDelegate?
    var filterDelegate: UsersFilterDelegate?
    
    init() {
        getUsers()
    }
    
    // MARK: - Functions
    func numberOfRows() -> Int {
        return filteredAthletes?.count ?? 0
    }
    
    func getUser(at index: Int) -> Athlete? {
        return filteredAthletes?[index]
    }
    
    func filterUsers(with searchText: String) {
        guard let athletes = athletes else { return }
        
        if searchText.isEmpty {
            filteredAthletes = athletes
        } else {
            filteredAthletes = athletes.filter { $0.name.lowercased().contains(searchText.lowercased()) }
        }
        
        filterDelegate?.didFilterUsers(filteredAthletes: filteredAthletes ?? [])
    }
    
    // MARK: - Private Functions
    private func getUsers() {
        delegate?.showActivityIndicator()
        
        ref.observeSingleEvent(of: .value) { snapshot in
            var unwrappedAthletes = [Athlete]()
            
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
            self.filteredAthletes = unwrappedAthletes
            self.delegate?.didFetchUsers()
            self.delegate?.hideActivityIndicator()
        }
    }
    
    private func castToUser(from dictionary: [String: Any]) -> Athlete? {
        do {
            let data = try JSONSerialization.data(withJSONObject: dictionary, options: [])
            let decoder = JSONDecoder()
            let user = try decoder.decode(Athlete.self, from: data)
            return user
        } catch {
            print("Error casting data to User: \(error)")
            return nil
        }
    }
}
