//
//  BrandGridView.swift
//  Hail Mary Shop
//
//  Created by Богдан Беннер on 17.09.22.
//

import SwiftUI

struct BrandGridView: View {
    var body: some View {
		ScrollView(.horizontal, showsIndicators: false) {
			LazyHGrid(rows: gridLayout, alignment: .center, spacing: columnSpacing) {
				ForEach(brands) { brand in
					BrandItemView(brand: brand)
				}
			}
			.frame(height: 200)
			.padding(15)
		}
    }
}

struct BrandGridView_Previews: PreviewProvider {
    static var previews: some View {
        BrandGridView()
			.previewLayout(.sizeThatFits)
    }
}
