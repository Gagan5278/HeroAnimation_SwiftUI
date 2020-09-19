//
//  TabsName.swift
//  SwiftUIHeroAnimation
//
//  Created by Gagan  Vishal on 9/18/20.
//


enum TabsName: String {
    case Explore
    case Liked
    case Account
    
    var systemImageName: String {
        switch self {
        case .Explore:
            return "map"
        case .Liked:
            return "heart"
        case .Account:
            return "person"
        }
    }
}
