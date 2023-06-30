//
//  ToDoItemViewModel.swift
//  ToDo
//
//  Created by Руслан on 30.06.2023.
//

import Foundation

class ToDoItemViewModel: ObservableObject {
    @Published
    var item: ToDoItem
    @Published
    var toggleCompletion: () -> Void
    
    init(item: ToDoItem) {
        self.item = item
        self.toggleCompletion = {
            ToDoService.instance.toggleCompletion(byItemId: item.id)
        }
    }
}
