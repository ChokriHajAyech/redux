//
//  AddButton.swift
//  Redux
//
//  Created by Mobiapps on 08/03/2021.
//

import SwiftUI

struct AddButton: View {
	@Binding var isAddingMode: Bool
	var body: some View {
		Button(action: { self.isAddingMode = true }) {
			Image(systemName: "plus")
		}
	}
}
