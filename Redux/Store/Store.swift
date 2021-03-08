//
//  Store.swift
//  Redux
//
//  Created by Mobiapps on 08/03/2021.
//

import Foundation
import Combine

final class Store: ObservableObject {
	@Published private(set) var state: AppState
	init(state: AppState = .init(workouts: [Workout]())) {
		self.state = state
	}
	public func dispatch(action: Action) {
	   self.state = reducer(state: state, action: action)
   }
}
