//
//  RatingsSizesDetailView.swift
//  Hail Mary Shop
//
//  Created by Богдан Беннер on 17.09.22.
//

import SwiftUI

struct RatingsSizesDetailView: View {
	let sizes: [String] = ["XS", "S", "M", "L", "XL"]
	
    var body: some View {
		HStack(alignment: .top, spacing: 3) {
			// ratings
			VStack(alignment: .leading, spacing: 3) {
				Text("Ratings")
					.font(.footnote)
					.fontWeight(.semibold)
					.foregroundColor(.gray)
				HStack(alignment: .center, spacing: 3) {
					ForEach(1...5, id: \.self) { item in
						Button(action: {}) {
							Image(systemName: "star.fill")
								.frame(width: 28, height: 28)
								.background(Color.gray.cornerRadius(5))
								.foregroundColor(.white)
						}
					}
				}
			}
			Spacer()
			// sizes
			VStack(alignment: .trailing, spacing: 3) {
				Text("Sizes")
					.font(.footnote)
					.fontWeight(.semibold)
					.foregroundColor(.gray)
				HStack(alignment: .center, spacing: 5) {
					ForEach(sizes, id: \.self) { size in
						Button(action: {}) {
							Text(size)
								.font(.footnote)
								.fontWeight(.black)
								.foregroundColor(.gray)
								.frame(width: 28, height: 28, alignment: .center)
								.background(Color.white.cornerRadius(5))
								.background(RoundedRectangle(cornerRadius: 5).stroke(Color.gray, lineWidth: 2))
						}
					}
				}
			}
		}
    }
}

struct RatingsSizesDetailView_Previews: PreviewProvider {
    static var previews: some View {
        RatingsSizesDetailView()
			.previewLayout(.sizeThatFits)
			.padding()
    }
}
