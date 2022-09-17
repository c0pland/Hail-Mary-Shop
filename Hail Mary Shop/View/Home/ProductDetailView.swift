//
//  ProductDetailView.swift
//  Hail Mary Shop
//
//  Created by Богдан Беннер on 17.09.22.
//

import SwiftUI

struct ProductDetailView: View {
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
			// detail bottom
			
			// rating & sizes
			
			//description
			
			// quantity & favourite
			
			// add to cart
			Spacer()
		}
		.ignoresSafeArea(.all, edges: .all)
		.background(Color(
			red: sampleProduct.red,
			green: sampleProduct.green,
			blue: sampleProduct.blue)
			.ignoresSafeArea(.all, edges: .all)
		)
		
    }
}

struct ProductDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailView()
			.previewLayout(.fixed(width: 375, height: 812))
    }
}
