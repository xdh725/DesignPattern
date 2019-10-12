//
//  StrategyPattern.swift
//  DesignPattern
//
//  Created by 谢东华 on 2019/9/30.
//  Copyright © 2019 谢东华. All rights reserved.
//

import Foundation

// 策略模式

// SimU Duck 游戏里面各种鸭子 一边游泳一边叫. 使用 OO 技术设计.
/*
protocol QuackBehavior {
    func quack()
}

protocol FlyBehavior {
    func fly()
}

class FlyWithWings: FlyBehavior {
    func fly() {
        print("fly in the wing")
    }
}

class FlyNoWay: FlyBehavior {
    func fly() {
        print("can't fly")
    }
}

class Quack: QuackBehavior {
    func quack() {
        print("duck quack quack")
    }
}

class Squeak: QuackBehavior {
    func quack() {
        print("duck squeak sqeak");
    }
}

class MuteQuack: QuackBehavior {
    func quack() {
        // can not quack
    }
}

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

class MallardDuck: Duck {
    override init() {
        super.init()
        quackBehavior = Squeak()
        flyBehavior = FlyWithWings()
    }
    
    override func display() {
        print("green head duck")
    }
}

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
*/
//let redduck = RedheadDuck()
//redduck.display()
//redduck.performFly()
//redduck.performQuack()
//redduck.quackBehavior = Squeak()
//redduck.performQuack()
