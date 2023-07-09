//
//  DateValue.swift
//  Gi
//
//  Created by Daol on 2023/07/02.
//

import SwiftUI

struct DateValue: Identifiable {
    let id = UUID()
    let day: Int
    let date: Date
    
    init(day: Int, date: Date) {
        self.day = day
        self.date = Calendar.current.startOfDay(for: date)
    }
}
