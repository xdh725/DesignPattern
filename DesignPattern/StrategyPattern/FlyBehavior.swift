//
//  FlyBehavior.swift
//  DesignPattern
//
//  Created by 谢东华 on 2019/9/30.
//  Copyright © 2019 谢东华. All rights reserved.
//

import Foundation

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
