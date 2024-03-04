import UIKit
// 1
class Game {
    var name: String
    var delegate: Player?
    
    init(name: String) {
        self.name = name
        }
    func startGame() {
        print("Fire fire now")
        delegate?.attack()
    }
}

class Unit: Player {
    
    var name: String
    
    init(name: String) {
        self.name = name
    }
    func attack() {
        print("\(name) is fire now")
    }
}
protocol Player {
    func attack()
}

let game = Game(name: "GtaSA")
let unit = Unit(name: "Billy")
game.delegate = unit
game.startGame()

//2

class Parent {
    var name: String
    var delegate: CanCleanHouse?
    
    init(name: String) {
        self.name = name
    }
    func cleanHouse() {
        print("function was called")
        delegate?.cleanHouse()
    }
    
}
protocol CanCleanHouse {
    func cleanHouse()
}

class Child: CanCleanHouse {
    var name: String
    var delegate: CanCleanHouse?
    
    init(name: String) {
        self.name = name
    }
    func cleanHouse() {
        print("\(name) is cleaning the house")
        
        delegate?.cleanHouse()
    }
}
    class Sister: CanCleanHouse {
        var name: String
        var delegate: CanCleanHouse?
        
        init(name: String) {
            self.name = name
        }
        func cleanHouse() {
            print("Asti sister is cleaning the house")
        }
    }

 let child = Child(name: "Asti")
let mother = Parent(name: "Assol")
let sister = Sister(name: "Anel")
mother.delegate = child
child.delegate = sister
mother.cleanHouse()
