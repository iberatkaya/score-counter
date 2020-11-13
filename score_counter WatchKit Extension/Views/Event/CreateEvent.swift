//
//  CreateEvent.swift
//  score_counter WatchKit Extension
//
//  Created by Ibrahim Berat Kaya on 12.11.2020.
//

import SwiftUI

struct CreateEvent: View {
    //Used in order to pop from the page
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    @ObservedObject var eventsModel: EventsModel

    @State private var title: String = ""
    @State private var player1: String = ""
    @State private var player2: String = ""

    var body: some View {
        List {
            TextField("Title", text: $title)
            TextField("Player 1", text: $player1)
            TextField("Player 2", text: $player2)
            Button(action: {
                //Create the new event
                let newEvent = Event(title: title, firstPlayer: Player(name: player1, score: 0, playerNumber: 1), secondPlayer: Player(name: player2, score: 0, playerNumber: 2))
                
                //Add the new event to the eventsModel
                eventsModel.addEvent(event: newEvent)
                
                //Pop from the page
                presentationMode.wrappedValue.dismiss()
            }, label: {
                HStack {
                    Spacer()
                    Text("Save").bold().font(.title3)
                    Spacer()
                }
            }).disabled(title.isEmpty || player1.isEmpty || player2.isEmpty || (player1 == player2))
        }
    }
}

struct CreateEvent_Previews: PreviewProvider {
    static var previews: some View {
        CreateEvent(eventsModel: EventsModel())
    }
}
