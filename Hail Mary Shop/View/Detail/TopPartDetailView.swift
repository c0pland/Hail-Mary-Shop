//
//  TopPartDetailView.swift
//  Hail Mary Shop
//
//  Created by Богдан Беннер on 17.09.22.
//

import SwiftUI

struct TopPartDetailView: View {
	@EnvironmentObject var shop: Shop
	@State private var isAnimating = false
    var body: some View {
		HStack(alignment: .center, spacing: 6) {
			// price
			VStack(alignment: .leading, spacing: 6) {
				Text("Price")
					.fontWeight(.semibold)
				Text(shop.selectedProduct?.formattedPrice ?? sampleProduct.formattedPrice)
					.font(.largeTitle)
					.fontWeight(.black)
					.scaleEffect(1.35, anchor: .leading)
			}
			.offset(y: isAnimating ? -50 : -75)
			Spacer()
			//photo
			Image(shop.selectedProduct?.image ?? sampleProduct.image)
				.resizable()
				.scaledToFit()
		}
		.offset(y: isAnimating ? 0 : -35)
		.onAppear {
			withAnimation(.easeOut(duration: 0.75)) {
				isAnimating.toggle()
			}
		}
    }
}

struct TopPartDetailView_Previews: PreviewProvider {
    static var previews: some View {
        TopPartDetailView()
			.previewLayout(.sizeThatFits)
			.padding()
			.environmentObject(Shop())
    }
}
