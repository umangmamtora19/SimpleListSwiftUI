//
//  HideScrollIndicatorViewModifier.swift
//  Practical
//
//  Created by Umang on 24/06/23.
//

import SwiftUI

struct HideIndicator: ViewModifier {
    init() {
        UITableView.appearance().showsVerticalScrollIndicator = false
    }
    func body(content: Content) -> some View {
        if #available(iOS 16.0, *) {
            content
                .scrollIndicators(.hidden)
        } else {
            content
        }
    }
}
 
