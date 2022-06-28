import SwiftUI

func RandomPrompt() -> String{
    let things = ["Three people you enjoyed talking to today","Three things you are grateful for today."]
    return String(things.randomElement()!)
}
struct ContentView: View {
    @State var GoodThingPrompt: String = RandomPrompt()
    var body: some View {
        VStack {
            Text(GoodThingPrompt)

            
        }
    }
}
