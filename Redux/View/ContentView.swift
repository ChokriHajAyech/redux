//https://dzone.com/articles/swiftui-interaction-with-redux

//State is a fundamental concept in SwiftUI and Redux. In our case, this is not only a buzzword, but also an entity that connects them and allows them to work very well together. In this article we will try to show that the thesis above is true, so let's get started!
//
//Before we go deeper into writing code, first let's understand what Redux is and what it consists of.
//
//Redux is an open-source library for managing the state of an application. It is most often used in conjunction with React or Angular to develop the client-side. It contains a number of tools to significantly simplify the transfer of storage data through the context. Its creators are Daniil Abramov and Andrew Clark.
//
//For us, Redux is not just a library, it is already something more. We attribute it to the architectural decisions which the application is based on, primarily due to its unidirectional data stream.

import SwiftUI

struct ContentView: View {
	@EnvironmentObject var store: Store
	@State private var isAddingMode: Bool = false
	var body: some View {
		NavigationView {
			WorkoutListView()
				.navigationBarTitle("Workouts diary", displayMode: .inline)
				.navigationBarItems(
					leading: AddButton(isAddingMode: self.$isAddingMode),
					trailing: TrailingView()
				)
		}
		.sheet(isPresented: $isAddingMode) {
			AddWorkoutView(isAddingMode: self.$isAddingMode)
				.environmentObject(self.store)
		}
	}
}
