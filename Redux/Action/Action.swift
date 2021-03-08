//
//  Action.swift
//  Redux
//
//  Created by Mobiapps on 08/03/2021.
//

import Foundation

enum Action {
	case addWorkout(_ workout: Workout)
	case removeWorkout(at: IndexSet)
	case sort(by: SortType)
}
