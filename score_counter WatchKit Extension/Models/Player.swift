struct Player: Codable{
    var name: String
    var score: UInt
    var playerNumber: UInt
    
    
    init(name: String, score: UInt, playerNumber: UInt) {
        self.name = name
        self.score = score
        self.playerNumber = playerNumber
    }
}
