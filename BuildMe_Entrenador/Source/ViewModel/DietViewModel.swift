//
//  DietViewModel.swift
//  BuildMe_Entrenador
//
//  Created by Alejandro Rodríguez Cañete on 16/5/24.
//

import Foundation
import FirebaseDatabase

protocol DietFilterDelegate {
    func didFilterDiet(filteredAthletes: [Diet])
}

class DietViewModel {
    
    // MARK: - Variables
    let ref = Database.database().reference().child(Constants.dietChild)
    var diets: [Diet]?
    var filteredDiet: [Diet]?
    var delegate: PrincipalTableDelegate?
    var filterDelegate: DietFilterDelegate?
    
    init() {
        getUsers()
    }
    
    // MARK: - Functions
    func numberOfRows() -> Int {
        return filteredDiet?.count ?? 0
    }
    
    func getDiet(at index: Int) -> Diet? {
        return filteredDiet?[index]
    }
    
    func filterDiet(with searchText: String) {
        guard let diets = diets else { return }
        
        if searchText.isEmpty {
            filteredDiet = diets
        } else {
            filteredDiet = diets.filter { $0.name.lowercased().contains(searchText.lowercased()) }
        }
        
        filterDelegate?.didFilterDiet(filteredAthletes: filteredDiet ?? [])
    }
    
    // MARK: - Private Functions
    private func getUsers() {
        delegate?.showActivityIndicator()
        
        ref.observeSingleEvent(of: .value) { snapshot in
            var unwrappedAthletes = [Diet]()
            
            for child in snapshot.children {
                if let snapshot = child as? DataSnapshot,
                   let userData = snapshot.value as? [String: Any] {
                    if let user = self.castToUser(from: userData) {
                        unwrappedAthletes.append(user)
                        print("User -> \(user.name)")
                    }
                }
            }
            self.diets = unwrappedAthletes
            self.filteredDiet = unwrappedAthletes
            self.delegate?.didFetchUsers()
            self.delegate?.hideActivityIndicator()
        }
    }
    
    private func castToUser(from dictionary: [String: Any]) -> Diet? {
        do {
            let data = try JSONSerialization.data(withJSONObject: dictionary, options: [])
            let decoder = JSONDecoder()
            let user = try decoder.decode(Diet.self, from: data)
            return user
        } catch {
            print("Error casting data to User: \(error)")
            return nil
        }
    }
}
