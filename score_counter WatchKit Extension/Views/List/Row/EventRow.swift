import SwiftUI

struct EventRow: View {
    @ObservedObject var event: Event
    @EnvironmentObject var eventsModel: EventsModel
    
    var body: some View {
            NavigationLink(
                destination: EventView(event: event).environmentObject(eventsModel)
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
        EventRow(event: Event(title: "Soccer Game", firstPlayer: Player(name: "John", score: 3, playerNumber: 1), secondPlayer: Player(name: "Mike", score: 4, playerNumber: 2)))
    }
}
