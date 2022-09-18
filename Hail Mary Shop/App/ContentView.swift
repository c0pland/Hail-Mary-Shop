//
//  ContentView.swift
//  Hail Mary Shop
//
//  Created by Богдан Беннер on 15.09.22.
//

import SwiftUI

struct ContentView: View {
	// MARK: properties
	@EnvironmentObject var shop: Shop
	// MARK: body
	var body: some View {
		ZStack {
			if !shop.showingproduct && shop.selectedProduct == nil {
				VStack(spacing: 0) {
					NavigationBarView()
						.padding(.horizontal, 15)
						.padding(.bottom)
						.padding(.top, notchSize)
						.background(Color.white)
						.shadow(color: Color.black.opacity(0.05), radius: 5, x: 0, y: 5)
					
					ScrollView(.vertical, showsIndicators: false) {
						VStack(spacing: 0) {
							FeaturedTabView()
								.padding(.vertical, 20)
								.frame(minHeight: 280)
							CategoryGridView()
							TitleView(title: "Helmets")
							LazyVGrid(columns: gridLayout, spacing: 15) {
								ForEach(products) { product in
									ProductItemView(product: product)
										.onTapGesture {
											withAnimation(.easeOut) {
												shop.selectedProduct = product
												shop.showingproduct = true
												feedback.impactOccurred()
											}
										}
								}
							}
							.padding(15)
							TitleView(title: "Brands")
							BrandGridView()
							FooterView()
								.padding(.horizontal)
						}
					}
				}
				.background(colorBackground.ignoresSafeArea(.all, edges: .all))
			} else {
				ProductDetailView()
			}
		}
		.ignoresSafeArea(.all, edges: .top)
	}
}

struct ContentView_Previews: PreviewProvider {
	static var previews: some View {
		ContentView()
			.previewDevice("iPhone 12 Pro")
			.environmentObject(Shop())
	}
}
