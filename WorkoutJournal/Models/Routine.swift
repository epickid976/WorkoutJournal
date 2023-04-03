//
//  Routine.swift
//  WorkoutJournal
//
//  Created by Jose Blanco on 4/3/23.
//

import Foundation

struct Routine: Codable {
    var title: String
    var notes: String
    var exercises: [Exercise]

}
