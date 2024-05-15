//
//  DietViewModel.swift
//  BuildMe_Entrenador
//
//  Created by Alejandro Rodríguez Cañete on 15/5/24.
//

import Foundation
import FirebaseDatabase

protocol DietFilterDelegate {
    func didFilterUsers(filteredAthletes: [WeeklyMealPlan])
}

class DietViewModel {
    let ref = Database.database().reference().child(Constants.dietChild)
    var routines: [WeeklyMealPlan]?
    var filteredRoutines: [WeeklyMealPlan]?
    var delegate: PrincipalTableDelegate?
    var filterDelegate: DietFilterDelegate?
    
    init() {
        getUsers()
    }
    
    // MARK: - Functions
    func numberOfRows() -> Int {
        return filteredRoutines?.count ?? 0
    }
    
    func getUser(at index: Int) -> WeeklyMealPlan? {
        return filteredRoutines?[index]
    }
    
    func filterUsers(with searchText: String) {
        guard let diet = routines else { return }
        
        if searchText.isEmpty {
            filteredRoutines = diet
        } else {
            filteredRoutines = diet.filter { $0.name.lowercased().contains(searchText.lowercased()) }
        }
        
        filterDelegate?.didFilterUsers(filteredAthletes: filteredRoutines ?? [])
    }
    
    // MARK: - Private Functions
    private func getUsers() {
        delegate?.showActivityIndicator()
        
        ref.observeSingleEvent(of: .value) { snapshot in
            var unwrappedAthletes = [WeeklyMealPlan]()
            
            for child in snapshot.children {
                if let snapshot = child as? DataSnapshot,
                   let userData = snapshot.value as? [String: Any] {
                    if let diet = self.castToUser(from: userData) {
                        unwrappedAthletes.append(diet)
                        print("Routine -> \(diet.name)")
                    }
                }
            }
            self.routines = unwrappedAthletes
            self.filteredRoutines = unwrappedAthletes
            self.delegate?.didFetchUsers()
            self.delegate?.hideActivityIndicator()
        }
    }
    
    private func castToUser(from dictionary: [String: Any]) -> WeeklyMealPlan? {
        do {
            let data = try JSONSerialization.data(withJSONObject: dictionary, options: [])
            let decoder = JSONDecoder()
            let user = try decoder.decode(WeeklyMealPlan.self, from: data)
            return user
        } catch {
            print("Error casting data to Diet: \(error)")
            return nil
        }
    }
}
