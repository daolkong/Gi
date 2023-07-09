//
//  CalendarView.swift
//  Gi
//
//  Created by Daol on 2023/06/26.
//

import SwiftUI

struct CalendarEvent: Identifiable {
    let id = UUID()
    let date: Date
    let event: String
}

struct CalendarView: View {
    @State private var selectedDate: Date = Date()
    
    private let events = [
        CalendarEvent(date: Calendar.current.date(byAdding: .day, value: 1, to: Date())!, event: "Meeting"),
        CalendarEvent(date: Calendar.current.date(byAdding: .day, value: 3, to: Date())!, event: "Lunch"),
        CalendarEvent(date: Calendar.current.date(byAdding: .day, value: 5, to: Date())!, event: "Gym"),
    ]
    
    var body: some View {
        VStack {
            DatePicker("", selection: $selectedDate, in: ...Date(), displayedComponents: .date)
                .datePickerStyle(GraphicalDatePickerStyle())
                .padding()
            
            Text("Selected Date: \(selectedDate, formatter: dateFormatter)")
                .font(.headline)
                .padding()
            
            ForEach(events.filter { Calendar.current.isDate($0.date, inSameDayAs: selectedDate) }) { event in
                Text(event.event)
                    .font(.subheadline)
                    .foregroundColor(.blue)
            }
            
            Spacer()
        }
    }

    
    private let dateFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateStyle = .medium
        formatter.timeStyle = .none
        return formatter
    }()
}


struct CalendarView_Previews: PreviewProvider {
    static var previews: some View {
        CalendarView()
    }
}
