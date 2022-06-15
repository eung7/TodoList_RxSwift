//
//  Task.swift
//  TodoList_RxSwift
//
//  Created by 김응철 on 2022/06/16.
//

import Foundation

enum Priority: Int {
    case high
    case medium
    case low
}


struct Task {
    let title: String
    let priority: Priority
}

