import SwiftUI

func RandomPrompt() -> String{
    let things = ["Three people you enjoyed talking to today", "Three things you are grateful for today", "Three moments that made you smile today", "Three best things that have happened today"]
    return String(things.randomElement()!)
}

struct ContentView: View {
    @State var GoodThing1: String = ""
    @State var GoodThing2: String = ""
    @State var GoodThing3: String = ""
    @State var GoodThingPrompt: String = RandomPrompt()
    
    var body: some View {
        VStack {
            Text(GoodThingPrompt)
            TextField("1st", text: $GoodThing1)
            TextField("2nd", text: $GoodThing2)
            TextField("3rd", text: $GoodThing3)
            Button("New Prompt"){
                GoodThingPrompt = RandomPrompt()
            }
        }
    }
}
