//
//  QuackBehavior.swift
//  DesignPattern
//
//  Created by 谢东华 on 2019/9/30.
//  Copyright © 2019 谢东华. All rights reserved.
//

import Foundation

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
