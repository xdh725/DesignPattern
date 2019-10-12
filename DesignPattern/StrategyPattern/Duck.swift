//
//  Duck.swift
//  DesignPattern
//
//  Created by 谢东华 on 2019/9/30.
//  Copyright © 2019 谢东华. All rights reserved.
//

import Foundation

class Duck {
    var flyBehavior: FlyBehavior?
    var quackBehavior: QuackBehavior?

    func display() {} // all duck have display
    func swim() {} // all duck can swim
    
    func performQuack() {
        self.quackBehavior?.quack()
    }
    
    func performFly() {
        self.flyBehavior?.fly()
    }
}
