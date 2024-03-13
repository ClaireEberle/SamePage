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
}
