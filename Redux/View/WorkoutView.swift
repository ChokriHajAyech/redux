//
//  WorkoutView.swift
//  Redux
//
//  Created by Mobiapps on 08/03/2021.
//

import SwiftUI

struct WorkoutView: View {
	let workout: Workout
	private var backgroundColor: Color {
		switch workout.complexity {
		case .low:
			return .green
		case .medium:
			return .orange
		case .high:
			return .red
		}
	}

	var body: some View {
		HStack {
			VStack(alignment: .leading) {
				Text(workout.name)
				Text("Distance:" + workout.distance + "km")
					.font(.subheadline)
			}
			Spacer()
			VStack(alignment: .leading) {
				Text(simpleFormat(workout.date))
			}
		}
		.padding()
		.background(backgroundColor)
	}
}

private extension WorkoutView {
	func simpleFormat(_ date: Date) -> String {
		let dateFormatter = DateFormatter()
		dateFormatter.dateFormat = "dd MMM yyyy"
		dateFormatter.locale = .init(identifier: "en_GB")
		return dateFormatter.string(from: date)
	}
}
