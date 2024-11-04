import SwiftUI

struct WinLoseScreen: View {
    // Determines if the player won or lost
    var didWin: Bool
    
    // Environment variable to dismiss this view
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        VStack {
            Spacer()

            Text(didWin ? "You Win!" : "You Lose!")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(Color.brown) // Dark brown text color

            Spacer()

            Button(action: {
                presentationMode.wrappedValue.dismiss() // Dismiss this view to go back
            }) {
                Text("Play Again")
                    .font(.title2)
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
        }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity) // Full-screen size
        .background(Color.green.edgesIgnoringSafeArea(.all)) // Dark green background
    }
}

struct WinLoseScreen_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            WinLoseScreen(didWin: true) // Preview for "Win" state
            WinLoseScreen(didWin: false) // Preview for "Lose" state
        }
    }
}

