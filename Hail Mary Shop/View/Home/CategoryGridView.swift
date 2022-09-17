//
//  CategoryGridView.swift
//  Hail Mary Shop
//
//  Created by Богдан Беннер on 17.09.22.
//

import SwiftUI

struct CategoryGridView: View {
    var body: some View {
		ScrollView(.horizontal, showsIndicators: false) {
			LazyHGrid(rows: gridLayout, alignment: .center, spacing: columnSpacing, pinnedViews: []) {
				Section(
					header: SectionView(rotateClockwise: false),
					footer: SectionView(rotateClockwise: true)
				) {
					ForEach(categories) { category in
						CategoryItemView(category: category)
					}
				}
			}
			.frame(height: 140)
			.padding(.horizontal, 15)
			.padding(.vertical, 10)
		}
    }
}

struct CategoryGridView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryGridView()
			.previewLayout(.sizeThatFits)
			.padding()
    }
}
