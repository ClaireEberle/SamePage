//
//  ProfileViewViewModel.swift
//  SamePage
//
//  Created by Claire Eberle on 2/3/24.
//

import Foundation

class ProfileViewViewModel: ObservableObject {
    @Published var title = ""
    @Published var dueDate = Date()
    
    init() {}
    
    func save() {
        
    }
}
