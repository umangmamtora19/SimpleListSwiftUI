//
//  PersonImageView.swift
//  SimpleListExample
//
//  Created by Umang on 24/06/23.
//

import SwiftUI
import SDWebImageSwiftUI

struct PersonImageView: View {
    let url: String
    let width: CGFloat
    var body: some View {
        WebImage(url: URL(string: url))
            .placeholder(Image(systemName: "person").resizable())
            .frame(width: width / 2, height: width / 2)
            .foregroundColor(Color.white)
            .frame(width: width, height: width)
            .background(Color.blue)
            .cornerRadius(width / 2)
            .animation(.easeIn(duration: 1))
    }
}
