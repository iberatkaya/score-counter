struct Event {
    var title: String
    var firstPlayer: Player
    var secondPlayer: Player
    
    init(title: String, firstPlayer: Player, secondPlayer: Player) {
        self.title = title
        self.firstPlayer = firstPlayer
        self.secondPlayer = secondPlayer
    }
}
