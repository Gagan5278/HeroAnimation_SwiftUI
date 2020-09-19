//
//  TourModel.swift
//  SwiftUIHeroAnimation
//
//  Created by Gagan  Vishal on 9/18/20.
//

import Foundation

struct TourModel: Identifiable, Hashable {
    let id = UUID().uuidString
    let name: String
    let imageName: String
    let place: String
    let rating: String
    let amount: String
    
    static let arrayOfTour: [TourModel] = {
        return [
            TourModel(name: "Paris tours", imageName: "m1", place: "France", rating: "4.3", amount: "$340.43"),
            TourModel(name: "Milan tour", imageName: "m2", place: "Italy", rating: "4.1", amount: "$300.00"),
            TourModel(name: "Moscow Trip", imageName: "m3", place: "Russia", rating: "4.4", amount: "$290.90"),
            TourModel(name: "Goa tour", imageName: "m4", place: "India", rating: "4.9", amount: "$354.40"),
            TourModel(name: "Times Squares", imageName: "m5", place: "USA", rating: "4.2", amount: "$380.97"),
            TourModel(name: "Hamburg tour", imageName: "m6", place: "Germany", rating: "4.6", amount: "$347.65")
        ]
    }()
    
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(self.id)
    }
}
