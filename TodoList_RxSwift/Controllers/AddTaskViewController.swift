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
    
    @IBAction func save() {
        guard let priority = Priority(rawValue: prioritySegmentedControl.selectedSegmentIndex),
              let title = taskTitleTextField.text else { return }
        let task = Task(title: title, priority: priority)
    }
}
