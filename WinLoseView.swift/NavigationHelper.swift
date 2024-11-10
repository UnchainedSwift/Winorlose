import SwiftUI

class NavigationHelper: ObservableObject {
    @Published var currentScreen: GameScreen = .loading
    private var clickCount = 0

    func goToCampaign() {
        currentScreen = .campaign
    }

    func goToCharacterSelection() {
        currentScreen = .characterSelection
    }

    func goToGameplay() {
        currentScreen = .gameplay
    }

    func goToWinLose(won: Bool) {
        currentScreen = .winLose(won: won)
    }

    func toggleWinLose() {
        clickCount += 1
        if clickCount >= 3 { // Switch to lose after three clicks
            currentScreen = .winLose(won: false)
        }
        if clickCount >= 6 { // Switch back to win after six clicks
            currentScreen = .winLose(won: true)
            clickCount = 0 // Reset the counter
        }
    }
}

enum GameScreen: Equatable {
    case loading
    case campaign
    case characterSelection
    case gameplay
    case winLose(won: Bool)
}

