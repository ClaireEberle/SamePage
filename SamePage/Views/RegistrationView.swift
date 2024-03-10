//
//  RegistrationView.swift
//  SamePage
//
//  Created by Claire Eberle on 2/3/24.
//

import SwiftUI

struct RegistrationView: View {
   
    
    @StateObject var viewModel = RegistrationViewViewModel()
    
    var body: some View {
        VStack {
            // Header
            HeaderView(title: "Sign Up",
                       subtitle: "Start organizing to-do's",
                       angle: -15, background: .orange)
            
            Form {
                TextField("Full Name", text: $viewModel.name)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .autocorrectionDisabled()
                TextField("Email Address", text: $viewModel.email)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .autocapitalization(.none)
                    .autocorrectionDisabled()
                SecureField("Password", text: $viewModel.password)
                    .textFieldStyle(DefaultTextFieldStyle())
                
                TLButton(title: "Create Account",
                         background: .green
                ) {
                    //Attempt Registration
                }
            }
            .offset(y: -50)
            
        }
        Spacer()
    }
}

#Preview {
    RegistrationView()
}
