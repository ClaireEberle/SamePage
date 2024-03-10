//
//  ContentView.swift
//  SamePage
//
//  Created by Claire Eberle on 2/3/24.
//

import SwiftUI

struct MainView: View {
    @StateObject var viewModel = MainViewViewModel()
    
    var body: some View {
        if viewModel.isSignedIn, !viewModel.currentUserId.isEmpty {
            // signed in
            ToDoListView()
        } else {
            LoginView()
        
        }
        
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            MainView()
        }
        
    }
        
}
