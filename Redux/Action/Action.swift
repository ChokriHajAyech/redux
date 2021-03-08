import Foundation

enum Action {
	case addWorkout(_ workout: Workout)
	case removeWorkout(at: IndexSet)
	case sort(by: SortType)
}
