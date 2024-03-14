//
//  ToDoListItemViewViewModel.swift
//  SamePage
//
//  Created by Claire Eberle on 2/3/24.
//

import Foundation

//single to do list item view (each row in items list)
class ToDoListItemViewViewModel: ObservableObject {
    @Published var showingNewItemView = false
    
    
    init() {}
}
