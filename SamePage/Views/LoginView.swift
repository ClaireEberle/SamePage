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
      HeaderView()
            
            //Login Form
            Form {
                TextField("Email Address", text: $email)
                    .textFieldStyle(DefaultTextFieldStyle())
                SecureField("Password", text: $password)
                    .textFieldStyle(DefaultTextFieldStyle())
                
                Button {
                    //attempt login
                } label: {
                    ZStack {
                        RoundedRectangle(cornerRadius: 10)
                            .foregroundColor(Color.blue)
                        
                        Text("Log In")
                            .foregroundColor(Color.white)
                            .bold()
                    }
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
