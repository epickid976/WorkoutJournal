//
//  DatabaseManager.swift
//  WorkoutJournal
//
//  Created by Jose Blanco on 4/3/23.
//

import Foundation

class DatabaseManager: ObservableObject {
    private init() {
        
    }
    
    private let storage = UserDefaultsStorage.shared
    
    private let decoder = JSONDecoder()
    private let encoder = JSONEncoder()
    
    //GET methods
    func getAllExercises() -> [Exercise] {
        do {
            let data = storage.getExercises()
            
            guard let data = data else {
                return []
            }
            
            return try decoder.decode([Exercise].self, from: data)
        } catch {
            return []
        }
    }
    
    func getRoutines() -> [Routine] {
        do {
            let data = storage.getRoutines()
            
            guard let data = data else {
                return []
            }
            
            return try decoder.decode([Routine].self, from: data)
        } catch {
            return []
        }
        
    }
    
    func getWorkouts() -> [Workout] {
        do {
            let data = storage.getWorkouts()
            
            guard let data = data else {
                return []
            }
            
            return try decoder.decode([Workout].self, from: data)
        } catch {
            return []
        }
        
    }
    
    //ADD methods
    
    
    class var shared: DatabaseManager {
        struct Static {
            static let instance = DatabaseManager()
        }
        
        return Static.instance
    }
}
