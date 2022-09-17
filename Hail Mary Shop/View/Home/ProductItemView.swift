//
//  ProductItemView.swift
//  Hail Mary Shop
//
//  Created by Богдан Беннер on 17.09.22.
//

import SwiftUI

struct ProductItemView: View {
	let product: Product
    var body: some View {
		VStack(alignment: .leading, spacing: 6) {
			// photo
			ZStack {
				Image(product.image)
					.resizable()
					.scaledToFit()
					.padding(10)
			}
			.background(Color(red: product.red, green: product.green, blue: product.blue))
			.cornerRadius(12)
			// name
			Text(product.name)
				.font(.title3)
				.fontWeight(.black)
			// price
			Text(product.formattedPrice)
				.fontWeight(.semibold)
				.foregroundColor(.gray)
		}
    }
}

struct ProductItemView_Previews: PreviewProvider {
    static var previews: some View {
        ProductItemView(product: products[1])
			.previewLayout(.fixed(width: 200, height: 300))
			.padding()
    }
}
