//
//  HeaderView.swift
//  SamePage
//
//  Created by Claire Eberle on 2/3/24.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 0)
                .foregroundColor(Color.mint)
                .rotationEffect(Angle(degrees: 15))
            VStack {
                            Text("Shared To Do List")
                    .font(.system(size: 45))
                    .foregroundColor(Color.white)
                    .bold()
                            Text("Get things done together")
                    .font(.system(size: 25))
                    .foregroundColor(Color.white)
                        }
            .padding(.top, 50)
        }
        .frame(width: UIScreen.main.bounds.width * 3, height: 300)
        .offset(y: -95)
    }
}

#Preview {
    HeaderView()
}
