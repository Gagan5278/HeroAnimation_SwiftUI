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
    var body: some View {
        ZStack(alignment: Alignment(horizontal: .trailing, vertical: .bottom), content: {
            Image(model.imageName)
                .resizable()
                .frame(height: 250)
                .cornerRadius(20.0)
                .aspectRatio(contentMode:.fit)
                .matchedGeometryEffect(id: model.imageName, in: animation)
            Text(model.name)
                .font(.callout)
                .foregroundColor(.white)
                .padding(.horizontal, 4)
                .background(Color.gray.opacity(0.7))
                .offset(x: -15, y: -15)
                .matchedGeometryEffect(id: model.name, in: animation)

        })
        .padding(.horizontal)
        .padding(.vertical, 5)
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
