//
//  LoginView.swift
//  SamePage
//
//  Created by Claire Eberle on 2/3/24.
//

import SwiftUI

struct LoginView: View {
    
    @State var email = ""
    @State var password = ""
    
    var body: some View {
        NavigationView {
        VStack {
            //Header
            HeaderView(title: "Shared To-Do List",
                       subtitle: "Get Things Done Together",
                       angle: 15, background: .mint
            )
            
            //Login Form
            Form {
                TextField("Email Address", text: $email)
                    .textFieldStyle(DefaultTextFieldStyle())
                SecureField("Password", text: $password)
                    .textFieldStyle(DefaultTextFieldStyle())
                
                TLButton(title: "Log In", 
                         background: .blue) {
                    //Attempt Login
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
