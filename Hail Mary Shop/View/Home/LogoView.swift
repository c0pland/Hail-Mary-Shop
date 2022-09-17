//
//  LogoView.swift
//  Hail Mary Shop
//
//  Created by Богдан Беннер on 15.09.22.
//

import SwiftUI

struct LogoView: View {
    var body: some View {
		HStack(spacing: 4) {
			Text("Hail".uppercased())
				.font(.title3)
				.fontWeight(.black)
				.foregroundColor(.black)
			Image("logo-dark")
				.resizable()
				.scaledToFit()
				.frame(width: 30, height: 30, alignment: .center)
			Text("Mary".uppercased())
				.font(.title3)
				.fontWeight(.black)
				.foregroundColor(.black)
		}
    }
}

struct LogoView_Previews: PreviewProvider {
    static var previews: some View {
        LogoView()
			.previewLayout(.sizeThatFits)
    }
}
