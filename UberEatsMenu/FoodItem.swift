//
//  FoodItem.swift
//  UberEatsMenu
//
//  Created by Shaik Ahron on 04/02/23.
//

import Foundation

struct FoodItem: Identifiable{
    var id = UUID().uuidString
    let title: String
    let description: String
    let price: String
    let imageName: String
}


var japaneseFood: [FoodItem] = [
    .init(title: "Sushi", description: "Amazing sush imported directly", price: "$24", imageName: "japan-tapas"),
    .init(title: "Sushi", description: "Amazing sush imported directly", price: "$24", imageName: "japanese-ramen"),
    .init(title: "Sushi", description: "Amazing sush imported directly", price: "$24", imageName: "japanese-poke-bowl"),
    .init(title: "Sushi", description: "Amazing sush imported directly", price: "$24", imageName: "japanese-ramen")
]

var americanFood: [FoodItem] = [
    .init(title: "Sushi", description: "Amazing sush imported directly", price: "$24", imageName: "steak-house"),
    .init(title: "Sushi", description: "Amazing sush imported directly", price: "$24", imageName: "american-cheeseburger"),
    .init(title: "Sushi", description: "Amazing sush imported directly", price: "$24", imageName: "american-cheesesteak"),
    .init(title: "Sushi", description: "Amazing sush imported directly", price: "$24", imageName: "steak-house")
]

var italianFood: [FoodItem] = [
    .init(title: "Sushi", description: "Amazing sush imported directly", price: "$24", imageName: "italian-pizza"),
    .init(title: "Sushi", description: "Amazing sush imported directly", price: "$24", imageName: "italian-pasta"),
    .init(title: "Sushi", description: "Amazing sush imported directly", price: "$24", imageName: "italian-pizza"),
    .init(title: "Sushi", description: "Amazing sush imported directly", price: "$24", imageName: "italian-pasta")
]
