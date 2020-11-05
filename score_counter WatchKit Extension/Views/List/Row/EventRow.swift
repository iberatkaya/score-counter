import SwiftUI

struct EventRow: View {
    var event: Event
    var body: some View {
            NavigationLink(
                destination: EventView(event: event)
                ) {
                VStack{
                    Text(event.title).bold()
                    Text("\(event.firstPlayer.score) - \(event.secondPlayer.score)")
                }
            }
        
    }
}

struct EventRow_Previews: PreviewProvider {
    static var previews: some View {
        EventRow(event: Event(title: "Soccer Game", firstPlayer: Player(name: "John", score: 3), secondPlayer: Player(name: "Mike", score: 4)))
    }
}
