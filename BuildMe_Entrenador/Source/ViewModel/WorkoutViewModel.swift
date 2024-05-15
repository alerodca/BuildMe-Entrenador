//
//  WorkoutViewModel.swift
//  BuildMe_Entrenador
//
//  Created by Alejandro Rodríguez Cañete on 15/5/24.
//

import Foundation
import FirebaseDatabase

protocol WorkoutFilterDelegate {
    func didFilterUsers(filteredAthletes: [Training])
}

class WorkoutViewModel {
    
    // MARK: - Variables
    let ref = Database.database().reference().child(Constants.routineChild)
    var routines: [Training]?
    var filteredRoutines: [Training]?
    var delegate: PrincipalTableDelegate?
    var filterDelegate: WorkoutFilterDelegate?
    
    init() {
        getUsers()
    }
    
    // MARK: - Functions
    func numberOfRows() -> Int {
        return filteredRoutines?.count ?? 0
    }
    
    func getUser(at index: Int) -> Training? {
        return filteredRoutines?[index]
    }
    
    func filterUsers(with searchText: String) {
        guard let routines = routines else { return }
        
        if searchText.isEmpty {
            filteredRoutines = routines
        } else {
            filteredRoutines = routines.filter { $0.name!.lowercased().contains(searchText.lowercased()) }
        }
        
        filterDelegate?.didFilterUsers(filteredAthletes: filteredRoutines ?? [])
    }
    
    // MARK: - Private Functions
    private func getUsers() {
        delegate?.showActivityIndicator()
        
        ref.observeSingleEvent(of: .value) { snapshot in
            var unwrappedAthletes = [Training]()
            
            for child in snapshot.children {
                if let snapshot = child as? DataSnapshot,
                   let userData = snapshot.value as? [String: Any] {
                    if let rotine = self.castToUser(from: userData) {
                        unwrappedAthletes.append(rotine)
                        print("Routine -> \(rotine.name)")
                    }
                }
            }
            self.routines = unwrappedAthletes
            self.filteredRoutines = unwrappedAthletes
            self.delegate?.didFetchUsers()
            self.delegate?.hideActivityIndicator()
        }
    }
    
    private func castToUser(from dictionary: [String: Any]) -> Training? {
        do {
            let data = try JSONSerialization.data(withJSONObject: dictionary, options: [])
            let decoder = JSONDecoder()
            let user = try decoder.decode(Training.self, from: data)
            return user
        } catch {
            print("Error casting data to Workout: \(error)")
            return nil
        }
    }
}
