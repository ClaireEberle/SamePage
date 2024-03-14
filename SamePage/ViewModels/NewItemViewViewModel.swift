//
//  NewItemViewViewModel.swift
//  SamePage
//
//  Created by Claire Eberle on 2/3/24.
//

import Foundation

class NewItemViewViewModel: ObservableObject {
    @Published var title = ""
    @Published var dueDate = Date()
    
    init() {}
    
    func save() {
        
    }
    
    var canSave: Bool {
        guard !title.isEmpty else {
            return false
        }
        
        guard dueDate >= Date().addingTimeInterval(-86400) else {
            return false
        }
        
        return true
    }
}
