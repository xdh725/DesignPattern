//
//  ModelDuck.swift
//  DesignPattern
//
//  Created by 谢东华 on 2019/9/30.
//  Copyright © 2019 谢东华. All rights reserved.
//

import Foundation

class ModelDuck: Duck {
    override init() {
        super.init()
        quackBehavior = MuteQuack()
        flyBehavior = FlyNoWay()
    }
    
    override func display() {
        print("model duck")
    }
}
