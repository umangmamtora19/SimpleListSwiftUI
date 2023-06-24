//
//  PersonDetailView.swift
//  SimpleListExample
//
//  Created by Umang on 24/06/23.
//

import SwiftUI
import SDWebImageSwiftUI

struct PersonDetailView: View {
    var person: People
    
    var body: some View {
        Form {
            VStack(alignment: .leading, spacing: 45) {
                HStack {
                    Spacer()
                    PersonImageView(url: person.avatar, width: 120)
                    Spacer()
                }
                
                VStack(alignment: .leading, spacing: 15) {
                    TextWithValue(title: "Name ", value: "\(person.firstName ?? "") \(person.lastName ?? "")")
                    TextWithValue(title: "Email: ", value: person.email)
                    TextWithValue(title: "Job title: ", value: person.jobtitle)
                    TextWithValue(title: "Favorite Color: ", value: person.favouriteColor)
                }
            }
        }.listRowInsets(nil).navigationTitle("Person Detail")
    }
}

//struct PersonDetailView_Previews: PreviewProvider {
//    static var previews: some View {
//        PersonDetailView(peron: People(fromDictionary: [:]))
//    }
//}
