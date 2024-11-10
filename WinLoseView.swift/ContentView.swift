import SwiftUI

struct ContentView: View {
    @StateObject private var navigationHelper = NavigationHelper()

    var body: some View {
        WinLoseScreen(didWin: navigationHelper.currentScreen == .winLose(won: true))
            .environmentObject(navigationHelper)
    }
}

