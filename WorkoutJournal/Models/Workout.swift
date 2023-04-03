//
//  Workout.swift
//  WorkoutJournal
//
//  Created by Jose Blanco on 4/3/23.
//

import Foundation

enum WorkoutGoal: Codable {
    case weightLoss
    case weightGain
    case maintain
    case strength
    case hypertrophy
    
}

struct Workout: Codable {
    var name: String
    var goal: WorkoutGoal // .weightLoss .strength .gainWeight .hypertrophy .maintain
    var routines: [Routine]
}
