//
//  AddToCartDetailView.swift
//  Hail Mary Shop
//
//  Created by Богдан Беннер on 17.09.22.
//

import SwiftUI

struct AddToCartDetailView: View {
	@EnvironmentObject var shop: Shop
	var body: some View {
		Button(action: {
			feedback.impactOccurred()
		}) {
			Spacer()
			Text("add to cart".uppercased())
				.font(.system(.title2, design: .rounded))
				.fontWeight(.bold)
				.foregroundColor(.white)
			Spacer()
		}
		.padding(15)
		.background(Color(
			red: shop.selectedProduct?.red ?? sampleProduct.red,
			green: shop.selectedProduct?.green ?? sampleProduct.green,
			blue: shop.selectedProduct?.blue ?? sampleProduct.blue
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
			.environmentObject(Shop())
	}
}
