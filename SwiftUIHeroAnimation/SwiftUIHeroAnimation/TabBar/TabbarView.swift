//
//  TabbarView.swift
//  SwiftUIHeroAnimation
//
//  Created by Gagan  Vishal on 9/18/20.
//

import SwiftUI

struct TabbarView: View {
    @State var selectedTab: String = TabsName.Explore.rawValue
    @Namespace var namespace
    @State var show: Bool = false
    @State var selectedModel: TourModel = TourModel.arrayOfTour.first!
    var body: some View {
        
        ZStack(content: {
            VStack {
                switch selectedTab {
                case TabsName.Account.rawValue:
                    AccountView()
                case TabsName.Explore.rawValue:
                    HomeView(animation: namespace, isShown: $show, selectedModel: $selectedModel)
                default:
                    LikedView()
                }
                Spacer()
                HStack {
                    TabbarButtonView(buttonTitle: TabsName.Explore.rawValue, tab: $selectedTab)
                    Spacer(minLength: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/)
                    TabbarButtonView(buttonTitle: TabsName.Liked.rawValue, tab: $selectedTab)
                    Spacer(minLength: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/)
                    TabbarButtonView(buttonTitle: TabsName.Account.rawValue, tab: $selectedTab)
                }
                .padding(.top)
                .padding(.bottom, UIApplication.shared.windows.first!.safeAreaInsets.bottom == 0 ? 15 : UIApplication.shared.windows.first!.safeAreaInsets.bottom )
                .padding(.horizontal)
                .background(Color.white)
                .clipShape(RoundedShape(corners: [.topLeft, .topRight]))
            }
            
            if (show) {
              //  withAnimation(.interactiveSpring(response: 1.0, dampingFraction: 2.0, blendDuration: 3.0)) {
                    DetailView(animation: namespace, model: self.selectedModel, isShowing: $show)
               // }
            }
        })
        .background(Color.init(white: 0.95)).edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
    }
}

struct TabbarView_Previews: PreviewProvider {
    static var previews: some View {
        TabbarView()
    }
}
