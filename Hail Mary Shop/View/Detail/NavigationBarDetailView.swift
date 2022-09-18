//
//  NavigationBarDetailView.swift
//  Hail Mary Shop
//
//  Created by Богдан Беннер on 17.09.22.
//

import SwiftUI

struct NavigationBarDetailView: View {
	@EnvironmentObject var shop: Shop
	var body: some View {
		HStack {
			Button(action: {
				withAnimation(.easeIn) {
					shop.selectedProduct = nil
					shop.showingproduct = false
					feedback.impactOccurred()
				}}) {
					Image(systemName: "chevron.left")
						.font(.title)
						.foregroundColor(.white)
				}
			Spacer()
			Button(action: {}) {
				Image(systemName: "cart")
					.font(.title)
					.foregroundColor(.white)
			}
		}
	}
}

struct NavigationBarDetailView_Previews: PreviewProvider {
	static var previews: some View {
		NavigationBarDetailView()
			.previewLayout(.sizeThatFits)
			.padding()
			.background(Color.gray)
			.environmentObject(Shop())
	}
}
