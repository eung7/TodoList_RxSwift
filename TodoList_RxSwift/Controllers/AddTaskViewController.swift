//
//  AddTaskViewController.swift
//  TodoList_RxSwift
//
//  Created by 김응철 on 2022/06/16.
//

import UIKit
import RxSwift

class AddTaskViewController: UIViewController {
    @IBOutlet weak var prioritySegmentedControl: UISegmentedControl!
    @IBOutlet weak var taskTitleTextField: UITextField!
    
    private let taskSubject = PublishSubject<Task>()
    
    var taskSubjectObservable: Observable<Task> { return taskSubject.asObservable() }
    
    @IBAction func save() {
        guard let priority = Priority(rawValue: prioritySegmentedControl.selectedSegmentIndex),
              let title = taskTitleTextField.text else { return }
        let task = Task(title: title, priority: priority)
        taskSubject.onNext(task)
        dismiss(animated: true)
    }
}
