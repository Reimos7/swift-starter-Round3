//
//  main.swift
//  CodeStarterCamp_Week3
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

let misterLee: Person = Person(budget: 100000, name: "misterLee")
var missKim: Person = Person(budget: 50000, name: "missKim")

var yagombucks: CoffeeShop = CoffeeShop(sales: 30000000,
                                        menu: [.라떼: 4500, .아메리카노: 4000, .디카페인: 4500, .콜드브루: 5000],
                                        barista: misterLee)

missKim.order(.라떼, of: yagombucks, by: missKim.name)
