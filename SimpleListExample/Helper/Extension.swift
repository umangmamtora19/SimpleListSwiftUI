//
//  Extension.swift
//  Practical
//
//  Created by Umang on 23/06/23.
//

import Foundation

extension String {
    func toDate(format from: String, format to: String) -> Self {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = from
        let dateFormatterTo = DateFormatter()
        dateFormatterTo.dateFormat = to
        if let date: Date = dateFormatter.date(from: self) as Date? {
            let strDate = dateFormatterTo.string(from: date as Date)
            return strDate
        }
        return "nil"
    }
}
