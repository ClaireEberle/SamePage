//
//  LoginView.swift
//  SamePage
//
//  Created by Claire Eberle on 2/3/24.
//

import SwiftUI

struct LoginView: View {
    
    @StateObject var viewModel = LoginViewViewModel()
    
    var body: some View {
        NavigationView {
        VStack {
            //Header
            HeaderView(title: "Shared To-Do List",
                       subtitle: "Get Things Done Together",
                       angle: 15, 
                       background: .mint)
            
            
            //Login Form
            Form {
                
                if !viewModel.errorMessage.isEmpty{
                    Text(viewModel.errorMessage)
                        .foregroundColor(Color.red)
                }
                
                TextField("Email Address", text: $viewModel.email)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .autocapitalization(.none)
                SecureField("Password", text: $viewModel.password)
                    .textFieldStyle(DefaultTextFieldStyle())
                
                TLButton(title: "Log In", 
                         background: .blue) {
                    //Attempt Login
                    viewModel.login()
                }
                .padding()
            }
            //Create account
            VStack {
                Text ("New around here?")
                NavigationLink("Create An Account", destination: RegistrationView())
               
            }
            .padding(.bottom, 50)
            
            Spacer()
        }
    }
}
}

#Preview {
    LoginView()
}
