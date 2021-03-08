//
//  Workout.swift
//  Redux
//
//  Created by Mobiapps on 08/03/2021.
//

import Foundation

struct Workout: Identifiable {
	let id: UUID = .init()
	let name: String
	let distance: String
	let date: Date
	let complexity: Complexity
}
