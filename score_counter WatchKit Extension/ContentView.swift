//
//  ContentView.swift
//  score_counter WatchKit Extension
//
//  Created by MACBOOK on 25.10.2020.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        EventList(events: [Event(title: "Test", firstPlayer: Player(name: "James", score: 5), secondPlayer: Player(name: "Mike", score: 2)), Event(title: "Test 2", firstPlayer: Player(name: "John", score: 1), secondPlayer: Player(name: "Joe", score: 2)),Event(title: "Test 2", firstPlayer: Player(name: "Jimmy", score: 4), secondPlayer: Player(name: "Jeremy", score: 3))])
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
