import UIKit

// 装饰者模式
// 面条

protocol Component {
    var cost: Int { get }
    var descriptions: String { get }
}

protocol Decorate: Component {
    var component: Component { get}
    init(_ component: Component)
}

struct Noodle: Component {
    var cost: Int { return 12 } //一碗面 12 块
    var descriptions: String { return "一碗面条" }
}

struct Beef: Decorate {
    var component: Component
    init(_ component: Component) {
        self.component = component
    }

    var cost: Int { //加一份牛肉 6 块
        self.component.cost + 6
    }
    var descriptions: String {
        self.component.descriptions + "加牛肉"
    }
}

struct Egg: Decorate {
    var component: Component
    init(_ component: Component) {
        self.component = component
    }
    
    var cost: Int { //加一份鸡蛋 2 块
        self.component.cost + 2
    }
    
    var descriptions: String {
        self.component.descriptions + "加鸡蛋"
    }
}

// 一碗加 2 个鸡蛋的牛肉面
let noodle = Beef(Egg(Egg(Noodle())))
noodle.cost
noodle.descriptions
