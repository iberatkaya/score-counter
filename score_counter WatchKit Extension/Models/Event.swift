import SwiftUI

class Event: ObservableObject, Identifiable, Codable {
    var id = UUID()
    
    var eventId = UUID().uuidString
    @Published var title: String
    @Published var firstPlayer: Player
    @Published var secondPlayer: Player
    
    init(title: String, firstPlayer: Player, secondPlayer: Player) {
        self.title = title
        self.firstPlayer = firstPlayer
        self.secondPlayer = secondPlayer
    }
    
    required init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        title = try values.decode(String.self, forKey: .title)
        firstPlayer = try values.decode(Player.self, forKey: .firstPlayer)
        secondPlayer = try values.decode(Player.self, forKey: .secondPlayer)
    }
    
    func incrementPlayerScore(playerNumber: UInt, amount: UInt) {
        if(playerNumber == firstPlayer.playerNumber){
            let (value, overflow) = firstPlayer.score.addingReportingOverflow(amount)
            if !overflow {
                firstPlayer.score = value
            }
        }
        else if(playerNumber == secondPlayer.playerNumber) {
            let (value, overflow) = secondPlayer.score.addingReportingOverflow(amount)
            if !overflow {
                secondPlayer.score = value
            }
        }
    }
    
    func decrementPlayerScore(playerNumber: UInt, amount: UInt){
        if(playerNumber == firstPlayer.playerNumber){
            let (value, overflow) = firstPlayer.score.subtractingReportingOverflow(amount)
            if !overflow {
                firstPlayer.score = value
            }
        }
        else if(playerNumber == secondPlayer.playerNumber) {
            let (value, overflow) = secondPlayer.score.subtractingReportingOverflow(amount)
            if !overflow {
                secondPlayer.score = value
            }
        }
    }
    
    enum CodingKeys: String, CodingKey {
        case title
        case firstPlayer
        case secondPlayer
        case eventId
   }
    
    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(title, forKey: .title)
        try container.encode(firstPlayer, forKey: .firstPlayer)
        try container.encode(secondPlayer, forKey: .secondPlayer)
        try container.encode(eventId, forKey: .eventId)
    }
}
