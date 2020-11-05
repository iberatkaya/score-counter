import SwiftUI

class Event: ObservableObject, Identifiable {
    @Published var title: String
    @Published var firstPlayer: Player
    @Published var secondPlayer: Player
    
    init(title: String, firstPlayer: Player, secondPlayer: Player) {
        self.title = title
        self.firstPlayer = firstPlayer
        self.secondPlayer = secondPlayer
    }
}
