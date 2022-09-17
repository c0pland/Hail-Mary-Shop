//
//  AddToCartDetailView.swift
//  Hail Mary Shop
//
//  Created by Богдан Беннер on 17.09.22.
//

import SwiftUI

struct AddToCartDetailView: View {
	var body: some View {
		Button(action: {}) {
			Spacer()
			Text("add to cart".uppercased())
				.font(.system(.title2, design: .rounded))
				.fontWeight(.bold)
				.foregroundColor(.white)
			Spacer()
		}
		.padding(15)
		.background(Color(
			red: sampleProduct.red,
			green: sampleProduct.green,
			blue: sampleProduct.blue
		)
		)
		.clipShape(Capsule())
	}
}

struct AddToCartDetailView_Previews: PreviewProvider {
	static var previews: some View {
		AddToCartDetailView()
			.previewLayout(.sizeThatFits)
			.padding()
	}
}
