import SwiftUI

struct EventView: View {
    @ObservedObject var event: Event
    @EnvironmentObject var eventsModel: EventsModel
    
    var body: some View {
        ScrollView {
            VStack {
                HStack {
                    Text(event.title).bold().font(Font.title2)
                }
                Underline(height: 1, color: .white).padding(EdgeInsets(top: 0, leading: 0, bottom: 4, trailing: 0))
                HStack {
                    VStack{
                        Text(event.firstPlayer.name).font(Font.title3)
                        Underline(height: 1, color: .white)
                    }
                    VStack{
                        Text(event.secondPlayer.name).font(Font.title3)
                        Underline(height: 1, color: .white)
                    }
                }
                HStack {
                    Text("\(event.firstPlayer.score)").font(Font.title3).bold().frame(maxWidth: .infinity)
                    Text("\(event.secondPlayer.score)").font(Font.title3).bold().frame(maxWidth: .infinity)
                }
                HStack {
                    Button(action: {
                        event.incrementPlayerScore(playerNumber: event.firstPlayer.playerNumber, amount: 1)
                        eventsModel.updateEvent(event: event)
                    }) {
                        Image(systemName: "plus")
                    }.frame(maxWidth: .infinity)
                    Button(action: {
                        event.incrementPlayerScore(playerNumber: event.secondPlayer.playerNumber, amount: 1)
                        eventsModel.updateEvent(event: event)
                    }) {
                        Image(systemName: "plus")
                    }.frame(maxWidth: .infinity)
                }
                HStack {
                    Button(action: {
                        event.decrementPlayerScore(playerNumber: event.firstPlayer.playerNumber, amount: 1)
                        eventsModel.updateEvent(event: event)
                        
                    }) {
                        Image(systemName: "minus")
                    }.frame(maxWidth: .infinity)
                    Button(action: {
                        event.decrementPlayerScore(playerNumber: event.secondPlayer.playerNumber, amount: 1)
                        eventsModel.updateEvent(event: event)
                    }) {
                        Image(systemName: "minus")
                    }.frame(maxWidth: .infinity)
                }
            }
        }
    }
}

struct EventView_Previews: PreviewProvider {
    static var previews: some View {
        EventView(event: Event(title: "Test", firstPlayer: Player(name: "James", score: 5, playerNumber: 1), secondPlayer: Player(name: "Mike", score: 2, playerNumber: 2)))
    }
}
