//
//  FooterView.swift
//  Hail Mary Shop
//
//  Created by Богдан Беннер on 15.09.22.
//

import SwiftUI

struct FooterView: View {
    var body: some View {
		VStack(alignment: .center, spacing: 10) {
			Text("We offer the most cutting edge, confortable, lightweight and durable football helmets in the market at affordable prices.")
				.foregroundColor(.gray)
				.multilineTextAlignment(.center)
				.layoutPriority(2)
			Image("logo-lineal")
				.renderingMode(.template)
				.foregroundColor(.gray)
				.layoutPriority(0)
			Text("Copyright © Bogdan Benner\nlinkedin.com/in/bennerbr\ngithub.com/c0pland")
				.font(.footnote)
				.fontWeight(.bold)
				.foregroundColor(.gray)
				.multilineTextAlignment(.center)
				.layoutPriority(1)
		}
		.padding()
    }
}

struct FooterView_Previews: PreviewProvider {
    static var previews: some View {
        FooterView()
			.previewLayout(.sizeThatFits)
			.background(colorBackground)
    }
}
