//
//  HomeView.swift
//  SwiftUIHeroAnimation
//
//  Created by Gagan  Vishal on 9/18/20.
//

import SwiftUI

struct HomeView: View {
    var animation: Namespace.ID
    @Binding var isShown: Bool
    @Binding var selectedModel: TourModel
    var body: some View {
        ScrollView(/*@START_MENU_TOKEN@*/.vertical/*@END_MENU_TOKEN@*/, showsIndicators: false, content: {
            VStack {
                HStack( spacing: 10) {
                    Text("Discover a \nNew Different World")
                        .font(.title)
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .foregroundColor(Color.cusomtColor)
                    Spacer(minLength: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/)
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                        Image(systemName: "clock.arrow.circlepath")
                            .resizable()
                            .foregroundColor(Color.cusomtColor)
                            .frame(width: 40, height: 40, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    })
                }
                .padding()
                .padding(.top, UIApplication.shared.windows.first!.safeAreaInsets.top)
                
                ScrollView(.horizontal, showsIndicators: false, content: {
                    HStack( spacing: 7) {
                        ForEach(1...8, id: \.self) {
                            return Image("f\($0)")
                                .resizable()
                                .frame(width: 80, height: 80, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                                .overlay(Circle().stroke(lineWidth: 2.0))
                        }
                        .padding()
                    }
                })
                HStack{
                    Text("Destinations")
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .foregroundColor(Color.cusomtColor)
                        Spacer(minLength: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/)
                    Text("See All")
                        .font(.body)
                        .fontWeight(.regular)
                        .foregroundColor(Color.gray)
                }
                .padding()
                
                VStack {
                    ForEach(TourModel.arrayOfTour) {
                        return ImageInfoView(animation: self.animation, model: $0, show: $isShown, selectedModel: $selectedModel)
                 }
                }
            }
        })
    }
}

/*
struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
 */
