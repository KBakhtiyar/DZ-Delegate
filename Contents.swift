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

