import SwiftUI

struct ContentView: View {
    @State private var showWinLoseScreen = false
    @State private var didWin = false

    var body: some View {
        VStack {
            Button("End Game") {
                // Randomly set win or lose for testing
                didWin = Bool.random()
                showWinLoseScreen = true
            }
        }
        .fullScreenCover(isPresented: $showWinLoseScreen) {
            WinLoseScreen(didWin: didWin)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

