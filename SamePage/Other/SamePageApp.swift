//
//  SamePageApp.swift
//  SamePage
//
//  Created by Claire Eberle on 2/3/24.
//

import FirebaseCore
import SwiftUI

@main
struct SamePageApp: App {
    
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}
