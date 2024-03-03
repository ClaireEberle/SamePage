//
//  HeaderView.swift
//  SamePage
//
//  Created by Claire Eberle on 2/3/24.
//

import SwiftUI

struct HeaderView: View {
    let title: String
    let subtitle: String
    let angle: Double
    let background: Color
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 0)
                .foregroundColor(background)
                .rotationEffect(Angle(degrees: angle))
            VStack {
                            Text(title)
                    .font(.system(size: 45))
                    .foregroundColor(Color.white)
                    .bold()
                            Text(subtitle)
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
    HeaderView( title: "Title",
                subtitle: "Subtitle",
                angle: 15,
                background: .pink)
}
