//
//  ContentView.swift
//  score_counter WatchKit Extension
//
//  Created by MACBOOK on 25.10.2020.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var eventsModel: EventsModel
    
    var body: some View {
        VStack {
            NavigationLink(
                destination: CreateEvent(eventsModel: eventsModel)
                ) {
                    HStack {
                        Text("Create Event")
                    }
            }
            EventList(eventsModel: eventsModel)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
