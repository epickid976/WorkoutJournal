//
//  UserDefaults.swift
//  WorkoutJournal
//
//  Created by Jose Blanco on 4/3/23.
//

import Foundation

class UserDefaultsStorage: ObservableObject {
    let defaults = UserDefaults.standard
    let shared = UserDefaultsStorage()
    
    private let exerciseKey = "exercisesKey"
    private let routineKey = "routinesKey"
    private let workoutKey = "workoutsKey"
    
    //GET methods
    
    func getExercises() -> Data? {
        
        if let exercises = defaults.object(forKey: exerciseKey) as? Data {
            return exercises
        } else {
            return nil
        }
        
    }
    
    func getRoutines() -> Data? {
        
        if let routines = defaults.object(forKey: routineKey) as? Data {
            return routines
        } else {
            return nil
        }
    }
    
    func getWorkouts() -> Data? {
        
        if let workouts = defaults.object(forKey: workoutKey) as? Data {
            return workouts
        } else {
            return nil
        }
    }
    
    //SAVE methods
    func saveExercises(data: Data) {
        defaults.set(data, forKey: exerciseKey)
    }
    
    func saveRoutines(data: Data) {
        defaults.set(data, forKey: routineKey)
    }
    
    func saveWorkouts(data: Data) {
        defaults.set(data, forKey: workoutKey)
    }
    
    class var shared: UserDefaultsStorage {
        struct Static {
            static let instance = UserDefaultsStorage()
        }
        
        return Static.instance
    }
}
