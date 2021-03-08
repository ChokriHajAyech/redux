import Foundation

struct Workout: Identifiable {
	let id: UUID = .init()
	let name: String
	let distance: String
	let date: Date
	let complexity: Complexity
}
