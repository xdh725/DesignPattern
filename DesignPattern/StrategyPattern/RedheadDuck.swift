//
//  RedheadDuck.swift
//  DesignPattern
//
//  Created by 谢东华 on 2019/9/30.
//  Copyright © 2019 谢东华. All rights reserved.
//

import Foundation

class RedheadDuck: Duck {
    override init() {
        super.init()
        quackBehavior = Quack()
        flyBehavior = FlyWithWings()
    }
    
    override func display() {
        print("red head duck")
    }
}
