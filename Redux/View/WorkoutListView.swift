//
//  WorkoutListView.swift
//  Redux
//
//  Created by Mobiapps on 08/03/2021.
//

import SwiftUI

struct WorkoutListView: View {
	@EnvironmentObject var store: Store
	var body: some View {
	List {
		ForEach(store.state.workouts) {
			WorkoutView(workout: $0)
		}
		.onDelete {
			self.store.dispatch(action: .removeWorkout(at: $0))
		}
		.listRowInsets(EdgeInsets())
	}
}
}
