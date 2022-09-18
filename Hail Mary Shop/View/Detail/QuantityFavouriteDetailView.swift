//
//  QuantityFavouriteDetailView.swift
//  Hail Mary Shop
//
//  Created by Богдан Беннер on 17.09.22.
//

import SwiftUI

struct QuantityFavouriteDetailView: View {
	@State private var counter = 0
	var body: some View {
		HStack(alignment: .center, spacing: 6) {
			Button(action: {
				if counter > 0 {
					counter -= 1
					feedback.impactOccurred()
				}
			}) {
				Image(systemName: "minus.circle")
			}
			Text("\(counter)")
				.fontWeight(.semibold)
				.frame(minWidth: 36)
			Button(action: {
				counter += 1
				feedback.impactOccurred()
			}) {
				Image(systemName: "plus.circle")
			}
			Spacer()
			Button(action: {}) {
				Image(systemName: "heart.circle")
					.foregroundColor(.pink)
			}
		}
		.font(.system(.title, design: .rounded))
		.foregroundColor(.black)
		.imageScale(.large)
	}
}

struct QuantityFavouriteDetailView_Previews: PreviewProvider {
	static var previews: some View {
		QuantityFavouriteDetailView()
			.previewLayout(.sizeThatFits)
			.padding()
	}
}
