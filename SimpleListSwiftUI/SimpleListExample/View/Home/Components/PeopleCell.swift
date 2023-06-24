//
//  PeopleCell.swift
//  Practical
//
//  Created by Umang on 24/06/23.
//

import SwiftUI
import SDWebImageSwiftUI

struct PeopleCell: View {
    let person: People!
    
    var body: some View {
        HStack(spacing: 15) {
            WebImage(url: URL(string: person.avatar))
                .placeholder(Image(systemName: "person").resizable())
                .frame(width: 25, height: 25)
                .foregroundColor(Color.white)
                .frame(width: 50, height: 50)
                .background(Color.orange)
                .cornerRadius(25)
                .animation(.easeIn(duration: 1))
            
            VStack(alignment: .leading, spacing: 4) {
                Text("\(person.firstName) \(person.lastName)")
                    .font(.system(.headline))
                Text(person.email)
                    .font(.system(.caption))
            }
        }
    }
}
