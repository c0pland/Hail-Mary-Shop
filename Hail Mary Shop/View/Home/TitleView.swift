//
//  TitleView.swift
//  Hail Mary Shop
//
//  Created by Богдан Беннер on 17.09.22.
//

import SwiftUI

struct TitleView: View {
	var title: String
    var body: some View {
		HStack {
			Text(title)
				.font(.largeTitle)
			.fontWeight(.heavy)
			Spacer()
		}
		.padding(.horizontal)
		.padding(.top, 15)
		.padding(.bottom, 10)
    }
}

struct TitleView_Previews: PreviewProvider {
    static var previews: some View {
		TitleView(title: "Helmet")
			.previewLayout(.sizeThatFits)
    }
}
