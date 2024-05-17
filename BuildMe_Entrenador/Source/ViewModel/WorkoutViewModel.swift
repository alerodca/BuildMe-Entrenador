//
//  WorkoutViewModel.swift
//  BuildMe_Entrenador
//
//  Created by Alejandro Rodríguez Cañete on 16/5/24.
//

import Foundation
import FirebaseDatabase

protocol WorkoutFilterDelegate {
    func didFilterRoutines(filteredAthletes: [Training])
}

class WorkoutViewModel {
    // MARK: - Variables
    let ref = Database.database().reference().child(Constants.routineChild)
    var routines: [Training]?
    var filteredRoutines: [Training]?
    var delegate: PrincipalTableDelegate?
    var filterDelegate: WorkoutFilterDelegate?
    
    init() {
        getRoutines()
    }
    
    // MARK: - Functions
    func numberOfRows() -> Int {
        return filteredRoutines?.count ?? 0
    }
    
    func getRoutine(at index: Int) -> Training? {
        return filteredRoutines?[index]
    }
    
    func filterRoutines(with searchText: String) {
        guard let routines = routines else { return }
        
        if searchText.isEmpty {
            filteredRoutines = routines
        } else {
            filteredRoutines = routines.filter { $0.name.lowercased().contains(searchText.lowercased()) }
        }
        
        filterDelegate?.didFilterRoutines(filteredAthletes: filteredRoutines ?? [])
    }
    
    // MARK: - Private Functions
    private func getRoutines() {
        delegate?.showActivityIndicator()
        
        ref.observeSingleEvent(of: .value) { snapshot in
            var unwrappedAthletes = [Training]()
            
            for child in snapshot.children {
                if let snapshot = child as? DataSnapshot,
                   let routineData = snapshot.value as? [String: Any] {
                    if let user = self.castToTraining(from: routineData) {
                        unwrappedAthletes.append(user)
                        print("User -> \(user.name)")
                    }
                }
            }
            self.routines = unwrappedAthletes
            self.filteredRoutines = unwrappedAthletes
            self.delegate?.didFetchUsers()
            self.delegate?.hideActivityIndicator()
        }
    }
    
    private func castToTraining(from dictionary: [String: Any]) -> Training? {
        do {
            let data = try JSONSerialization.data(withJSONObject: dictionary, options: [])
            let decoder = JSONDecoder()
            let user = try decoder.decode(Training.self, from: data)
            return user
        } catch {
            print("Error casting data to User: \(error)")
            return nil
        }
    }
}
