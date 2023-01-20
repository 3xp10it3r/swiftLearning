//
//  Date+Ext.swift
//  BarChart-SwiftUI
//
//  Created by Digvijay Gupta on 20/01/23.
//

import Foundation


extension Date {
    static func from(year:Int, month:Int , day:Int) -> Date {
        var components = DateComponents(year:year, month:month, day: day)
        return Calendar.current.date(from:components)!
    }
}
