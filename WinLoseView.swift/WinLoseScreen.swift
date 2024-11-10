import SwiftUI

struct WinLoseScreen: View {
    @EnvironmentObject var navigationHelper: NavigationHelper
    var didWin: Bool

    var body: some View {
        VStack {
            if didWin {
                Text("You Win! 🎉")
                    .font(.largeTitle)
                    .foregroundColor(.green)
            } else {
                Text("You Lose 😞")
                    .font(.largeTitle)
                    .foregroundColor(.red)
            }
            Button("Play Again") {
                navigationHelper.toggleWinLose()
            }
            .padding()
            .background(Color.blue)
            .foregroundColor(.white)
            .cornerRadius(10)
        }
    }
}

