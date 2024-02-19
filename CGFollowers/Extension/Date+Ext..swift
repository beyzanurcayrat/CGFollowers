//
//  Date+Ext..swift
//  CGFollowers
//
//  Created by beyzanur cayrat on 19.02.2024.
//

import Foundation

extension Date {
    func convertToMonthYearFormat() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MMM yyyy"
        return dateFormatter.string(from: self)
    }
}
