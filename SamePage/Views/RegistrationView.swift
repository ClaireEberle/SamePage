//
//  RegistrationView.swift
//  SamePage
//
//  Created by Claire Eberle on 2/3/24.
//

import SwiftUI

struct RegistrationView: View {
    var body: some View {
        VStack {
            // Header
            HeaderView(title: "Sign Up",
                       subtitle: "Start organizing to-do's",
                       angle: -15, background: .yellow)
            Spacer()
        }
    }
}

#Preview {
    RegistrationView()
}
