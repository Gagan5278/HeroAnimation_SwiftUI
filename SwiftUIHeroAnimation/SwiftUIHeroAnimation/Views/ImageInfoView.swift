//
//  ImageDetailView.swift
//  SwiftUIHeroAnimation
//
//  Created by Gagan  Vishal on 9/18/20.
//

import SwiftUI

struct ImageInfoView: View {
    var animation: Namespace.ID
    var model: TourModel
    @Binding var show: Bool
    @Binding var selectedModel: TourModel
    var body: some View {
        ZStack(alignment: Alignment(horizontal: .trailing, vertical: .bottom), content: {
            Image(model.imageName)
                .resizable()
                .frame(height: 250)
                .cornerRadius(20.0)
                .aspectRatio(contentMode:.fit)
                .matchedGeometryEffect(id: model.imageName, in: animation)
            
            VStack(alignment: .trailing, spacing: /*@START_MENU_TOKEN@*/nil/*@END_MENU_TOKEN@*/, content: {
                Text(model.name)
                    .font(.title)
                    .foregroundColor(.white)
                    .padding(.horizontal, 4)
                    .background(Color.gray.opacity(0.7))
                    .matchedGeometryEffect(id: model.name, in: animation)
                Text(model.place)
                    .font(.callout)
                    .foregroundColor(.white)
                    .multilineTextAlignment(.trailing)
                    .padding(.horizontal, 4)
                    .background(Color.gray.opacity(0.7))
                    .matchedGeometryEffect(id: model.place, in: animation)
            })
        })
        .padding(.horizontal)
        .padding(.vertical, 5)
        .onTapGesture(perform: {
            withAnimation(.spring()){

            show.toggle()
            selectedModel = model
            }
        })
    }
}

//#if DEBUG
//struct ImageDetailView_Previews: PreviewProvider {
//    static var previews: some View {
//        ImageDetailView(animation: Namespace.init(), model: TourModel.arrayOfTour.first!)
//    }
//}
//
//#endif
