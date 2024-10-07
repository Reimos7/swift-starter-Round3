//
//  main.swift
//  CodeStarterCamp_Week3
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

let misterLee: Person = Person(appearance: "nice", personality: "kind", budget: 100000, height: 175.3)
var missKim: Person = Person(appearance: "nice", personality: "cool", budget: 200000, height: 163.8)

var yagombucks: CoffeeShop = CoffeeShop(interior: "모던", sales: 30000000,
                                        menu: [.라떼: 4500, .아메리카노: 4000, .디카페인: 4500, .콜드브루: 5000],
                                        barista: misterLee)

missKim.buyCoffee(from: &yagombucks, coffee: .라떼)
