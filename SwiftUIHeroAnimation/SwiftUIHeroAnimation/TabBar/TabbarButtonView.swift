//
//  TabbarButtonView.swift
//  SwiftUIHeroAnimation
//
//  Created by Gagan  Vishal on 9/18/20.
//

import SwiftUI

struct TabbarButtonView: View {
    var buttonTitle: String
    @Binding var tab: String
    var body: some View {
        Button(action: {
            tab = buttonTitle
        }, label: {
            HStack(spacing: 0) {
                Image(systemName: TabsName(rawValue: buttonTitle)!.systemImageName)
                    .renderingMode(.template)
                    .foregroundColor(tab == buttonTitle ? Color.white : Color.black)
                Text(buttonTitle)
                    .padding(10)
                    .foregroundColor(tab == buttonTitle ? Color.white : Color.black)
            }

        })
        .padding(.horizontal)
        .background(tab == buttonTitle ? Color.cusomtColor : Color.gray)
        .clipShape(Capsule())
    }
}

struct TabbarButtonView_Previews: PreviewProvider {
    @State static var value = "false"
    static var previews: some View {
        TabbarButtonView(buttonTitle: "", tab: $value)
    }
}
