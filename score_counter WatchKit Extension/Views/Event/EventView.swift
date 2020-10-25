import SwiftUI

struct EventView: View {
    let event: Event
    
    var body: some View {
        ScrollView {
            VStack {
                HStack {
                    Text(event.title).bold().font(Font.title2)
                }
                Underline(height: 2, color: .white).padding(EdgeInsets(top: 0, leading: 0, bottom: 4, trailing: 0))
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
                    Text("\(event.firstPlayer.score)").bold().frame(maxWidth: .infinity)
                    Text("\(event.secondPlayer.score)").bold().frame(maxWidth: .infinity)
                }
                HStack {
                    Button(action: {
                        
                    }) {
                        Image(systemName: "plus")
                    }.frame(maxWidth: .infinity)
                    Button(action: {
                        
                    }) {
                        Image(systemName: "plus")
                    }.frame(maxWidth: .infinity)
                }
                HStack {
                    Button(action: {
                        
                    }) {
                        Image(systemName: "minus")
                    }.frame(maxWidth: .infinity)
                    Button(action: {
                        
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
        EventView(event: Event(title: "Test", firstPlayer: Player(name: "James", score: 5), secondPlayer: Player(name: "Mike", score: 2)))
    }
}
