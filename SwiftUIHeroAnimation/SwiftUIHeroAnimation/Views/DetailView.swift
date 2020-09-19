//
//  DetailView.swift
//  SwiftUIHeroAnimation
//
//  Created by Gagan  Vishal on 9/18/20.
//

import SwiftUI

struct DetailView: View {
    var animation: Namespace.ID
    var model: TourModel
    @Binding var isShowing: Bool
    var body: some View {
 
        VStack {
            VStack
                 {
                    ZStack(alignment: Alignment(horizontal: .leading, vertical: .top), content: {
                        Image(model.imageName)
                            .resizable()
                            .aspectRatio(contentMode:.fill)
                            .clipShape(RoundedShape(corners: [.bottomRight, .bottomLeft]))
                            .matchedGeometryEffect(id: model.imageName, in: animation)

                        HStack {
                            Button(action: {
                                withAnimation(.easeOut) {
                                    isShowing.toggle()
                                }
                            }, label: {
                                Image(systemName: "chevron.left.circle.fill")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 40, height: 40, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                    .foregroundColor(.white)

                            })
                            Spacer(minLength: 0)
                            Button(action: {
                                    withAnimation(.easeOut) {
                                        isShowing.toggle()
                                    }                        }, label: {
                                Image(systemName: "heart.fill")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 40, height: 40, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                    .foregroundColor(.white)

                            })
                        }
                        .padding()
                        .padding(.top, UIApplication.shared.windows.first!.safeAreaInsets.top)
                    })
                    
                VStack(alignment: .leading, spacing: /*@START_MENU_TOKEN@*/nil/*@END_MENU_TOKEN@*/, content: {
                    HStack{
                        Text(model.name)
                            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                            .fontWeight(.medium)
                            .foregroundColor(Color.cusomtColor)
                            .padding()
                            .matchedGeometryEffect(id: model.name, in: animation)
                       Spacer(minLength: 0)
                        Text(model.amount)
                            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                            .fontWeight(.medium)
                            .foregroundColor(Color.cusomtColor)
                            .padding()
                    }
                    .padding(.vertical, 5)
                    HStack{
                        Image(systemName: "map.fill")
                            .resizable()
                            .frame(width: 25, height: 25, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .foregroundColor(.gray)
                        Text(model.place)
                            .font(.callout)
                            .fontWeight(.regular)
                            .foregroundColor(Color.cusomtColor.opacity(0.9))
                            .padding(4)
                            .matchedGeometryEffect(id: model.place, in: animation)
                        Text(model.rating)
                            .font(.callout)
                            .fontWeight(.regular)
                            .foregroundColor(Color.cusomtColor.opacity(0.9))
                            .padding(4)
                        Image(systemName: "star.fill")
                            .resizable()
                            .frame(width: 25, height: 25, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .foregroundColor(.yellow)
                    }
                    .padding(.horizontal)
                })
                }
            .padding(.bottom, 20)
            .background(Color.init(red: 250.0/255.0, green: 255.0/255.0, blue: 255.0/255.0))
            .clipShape(RoundedShape.init(corners: [.bottomLeft, .bottomRight]))

            ScrollView(/*@START_MENU_TOKEN@*/.vertical/*@END_MENU_TOKEN@*/, showsIndicators: /*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/, content: {
                BottomView()
            })
            Spacer(minLength: 0)
        }
        .background(Color.init(red: 240.0/255.0, green: 255.0/255.0, blue: 255.0/255.0))

    }
}

