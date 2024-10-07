//
//  Person.swift
//  CodeStarterCamp_Week3
//
//  Created by jeseoyoung on 2024/10/04.
//

import Foundation

struct Person {
    var appearance: String
    var personality: String
    var budget: Int
    var height: Double
    
    init(appearance: String, personality: String, budget: Int, height: Double) {
        self.appearance = appearance
        self.personality = personality
        self.budget = budget
        self.height = height
    }
    
    mutating func buyCoffee(from shop: inout CoffeeShop, coffee: Coffee) {
        guard let price = shop.menu[coffee] else {
            print("해당 커피가 존재하지 않습니다.")
            return
        }
        
        if budget >= price {
            budget -= price
            shop.sales += price
            print("\(coffee)를 구매하였습니다.")
        } else {
            print("에산이 부족합니다")
        }
    }
}
