//
//  RoundedShape.swift
//  SwiftUIHeroAnimation
//
//  Created by Gagan  Vishal on 9/18/20.
//

import SwiftUI
//0 129 223
struct RoundedShape: Shape {
    var corners: UIRectCorner
    func path(in rect: CGRect) -> Path {
       let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: 20, height: 45))
        return Path(path.cgPath)
    }
}


