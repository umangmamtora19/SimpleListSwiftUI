//
//  PeopleCell.swift
//  Practical
//
//  Created by Umang on 24/06/23.
//

import SwiftUI

struct PeopleCell: View {
    let person: People!
    
    var body: some View {
        HStack(spacing: 15) {
            PersonImageView(url: person.avatar, width: 50)
            
            VStack(alignment: .leading, spacing: 4) {
                Text("\(person.firstName) \(person.lastName)")
                    .font(.system(.headline))
                Text(person.email)
                    .font(.system(.caption))
            }
            Spacer()
        }
    }
}

