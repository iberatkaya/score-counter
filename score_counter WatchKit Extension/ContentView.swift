//
//  ContentView.swift
//  score_counter WatchKit Extension
//
//  Created by MACBOOK on 25.10.2020.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        EventView(event: Event(title: "Test", firstPlayer: Player(name: "James", score: 5), secondPlayer: Player(name: "Mike", score: 2)))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
