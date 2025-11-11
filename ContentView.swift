
import SwiftUI

struct ContentView: View {
    @State private var showProfile = false
    @State private var showMessages = false
    @State private var journalEntry = ""

    var body: some View {
        NavigationView {
            VStack(spacing: 30) {
                Text("💌 Welcome to Lisa AI – Dating Support")
                    .font(.title2)
                    .multilineTextAlignment(.center)
                    .padding()

                Button("👤 View My Profile") {
                    showProfile.toggle()
                }
                .buttonStyle(.borderedProminent)
                .sheet(isPresented: $showProfile) {
                    ProfileView()
                }

                Button("💬 Practice Message") {
                    showMessages.toggle()
                }
                .buttonStyle(.bordered)
                .sheet(isPresented: $showMessages) {
                    MessageTemplateView()
                }

                TextEditor(text: $journalEntry)
                    .frame(height: 150)
                    .border(.gray)
                    .padding()
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color.gray.opacity(0.5), lineWidth: 1)
                    )

                Text("✍️ This is your private journal. Write freely.")
                    .font(.caption)
                    .foregroundColor(.gray)

                Spacer()
            }
            .padding()
            .navigationTitle("Lisa AI Dating")
        }
    }
}

struct ProfileView: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 15) {
                Text("🧍 About Me")
                    .font(.headline)
                Text("I’m 39, based in Australia, and I work at a disability center. I value kindness, quiet strength, and meaningful connection.")

                Text("💖 Looking For")
                    .font(.headline)
                Text("Someone thoughtful, 18+, who wants to build something real over time. No pressure, just honesty and care.")
            }
            .padding()
        }
    }
}

struct MessageTemplateView: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 12) {
                Text("📝 Message Starters")
                    .font(.headline)
                Text("Hi, I really liked your profile — especially what you shared about [their interest]. I work at a disability center and care deeply about people. I’d love to get to know you if you’re open to chatting.")
                Text("What’s a little thing that made you smile recently?")
                Text("If you could go anywhere this month, where would you go?")
                Text("What kind of support or kindness do you wish more people offered?")
            }
            .padding()
        }
    }
}

@main
struct LisaDatingApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
