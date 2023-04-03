//
//  Exercise.swift
//  WorkoutJournal
//
//  Created by Jose Blanco on 4/3/23.
//

import Foundation

struct Exercise: Codable {
    
    var title: String
    var description: String
    var sets: Int?
    var repRangeLow: Int?
    var repRangeHigh: Int?
    var reps: Int?
    var weight: Double?
    var distance: Double?
    var duration: Int?
    
}



