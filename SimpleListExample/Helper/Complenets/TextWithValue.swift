//
//  TextWithValue.swift
//  SimpleListExample
//
//  Created by Umang on 24/06/23.
//

import SwiftUI

struct TextWithValue: View {
    let title: String
    let value: String
    
    var body: some View {
        HStack(alignment: .top) {
            Text(title)
                .font(.system(.headline))
                .multilineTextAlignment(.leading)
            Text(value)
        }
    }
}
