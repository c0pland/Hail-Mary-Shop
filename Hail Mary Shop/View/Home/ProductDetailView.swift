//
//  ProductDetailView.swift
//  Hail Mary Shop
//
//  Created by Богдан Беннер on 17.09.22.
//

import SwiftUI

struct ProductDetailView: View {
	@EnvironmentObject var shop: Shop
    var body: some View {
		VStack(alignment: .leading, spacing: 5) {
			// Navbar
			NavigationBarDetailView()
				.padding(.horizontal)
				.padding(.top, notchSize)
			// header
			HeaderDetailView()
				.padding(.horizontal)
			// detail top
			TopPartDetailView()
				.padding(.horizontal)
				.zIndex(1)
			// detail bottom
			VStack(alignment: .center, spacing: 0) {
				// rating & sizes
				RatingsSizesDetailView()
					.padding(.top, -25)
					.padding(.bottom, 10)
				//description
				ScrollView(.vertical, showsIndicators: false) {
					Text(shop.selectedProduct?.description ?? sampleProduct.description)
						.font(.system(.body, design: .rounded))
						.foregroundColor(.gray)
						.multilineTextAlignment(.leading)
				}
				// quantity & favourite
				QuantityFavouriteDetailView()
					.padding(.vertical, 10)
				// add to cart
				AddToCartDetailView()
					.padding(.bottom, 20)
			}
			.padding(.horizontal)
			.background(
				Color.white
					.clipShape(CustomShape())
					.padding(.top, -105)
			)
			
		}
		.zIndex(0)
		.ignoresSafeArea(.all, edges: .all)
		.background(Color(
			red: shop.selectedProduct?.red ?? sampleProduct.red,
			green: shop.selectedProduct?.green ?? sampleProduct.green,
			blue: shop.selectedProduct?.blue ?? sampleProduct.blue)
			.ignoresSafeArea(.all, edges: .all)
		)
		
    }
}

struct ProductDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailView()
			.previewLayout(.fixed(width: 375, height: 812))
			.environmentObject(Shop())
    }
}
