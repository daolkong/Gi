//
//  Task.swift
//  Gi
//
//  Created by Daol on 2023/07/02.
//


import SwiftUI

struct Task: Identifiable {
    var id = UUID().uuidString
    var title: String
    var time: Date = Date()
}


struct TaskMetaData: Identifiable {
    var id = UUID().uuidString
    var task: [Task]
    var taskDate: Date
}

func getSampleData(offset: Int) -> Date {
    let calender = Calendar.current
    
    let date = calender.date(byAdding: .day, value: offset, to: Date())
    
    return date ?? Date()
}

var tasks: [TaskMetaData] = [
    
    TaskMetaData(task: [
        
        Task(title: "Talk to iJustine"),
        Task(title: "iphone 13 Great Design Change"),
        Task(title: "Nothing Much Workout !!!")
    ], taskDate: getSampleData(offset: 1)),
    
    TaskMetaData(task: [
        Task(title: "Talk to Jenna Ezarik")
    ], taskDate: getSampleData(offset: -3)),
    
    TaskMetaData(task: [
        Task(title: "Meeting with Tim Cook")
    ], taskDate: getSampleData(offset: -8)),
    TaskMetaData(task: [
        
        Task(title: "Next Version of SwiftUI")
    ], taskDate: getSampleData(offset: 10)),
    TaskMetaData(task: [
        
        Task(title: "Nothing Much Workout !!!")
    ], taskDate: getSampleData(offset: -22)),
    TaskMetaData(task: [
        
        Task(title: "iphone 13 Great Design Change")
    ], taskDate: getSampleData(offset: 15)),
    TaskMetaData(task: [
        
        Task(title: "Kavsoft App Updates....")
    ], taskDate: getSampleData(offset: -20)),
    TaskMetaData(task: [
        
        Task(title: "Kavsoft App Updates....")
    ], taskDate: getSampleData(offset: -26)),
    TaskMetaData(task: [
        
        Task(title: "학생총회")
    ], taskDate: getSampleData(offset: -27)),
    TaskMetaData(task: [
        
        Task(title: "학생총회"),
        Task(title: "문제정의 심사 피드백 재심사"),
       
        Task(title: "총회")
    ], taskDate: getSampleData(offset: -0)),
    TaskMetaData(task: [
        
        Task(title: "점심약속"),
        Task(title: "iphone 13 Great Design Change"),
        Task(title: "Nothing Much Workout !!!")
    ], taskDate: getSampleData(offset: -4)),
    
]
