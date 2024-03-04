//
//  RegistrationView.swift
//  SamePage
//
//  Created by Claire Eberle on 2/3/24.
//

import SwiftUI

struct RegistrationView: View {
    @State  var name = ""
    @State var email = ""
    @State var password = ""
    var body: some View {
        VStack {
            // Header
            HeaderView(title: "Sign Up",
                       subtitle: "Start organizing to-do's",
                       angle: -15, background: .yellow)
            
            Form {
                TextField("Full Name", text: $name)
                    .textFieldStyle(DefaultTextFieldStyle())
                TextField("Email Address", text: $email)
                    .textFieldStyle(DefaultTextFieldStyle())
                SecureField("Password", text: $password)
                    .textFieldStyle(DefaultTextFieldStyle())
            }
            .offset(y: -50)
            
        }
        Spacer()
    }
}

#Preview {
    RegistrationView()
}
