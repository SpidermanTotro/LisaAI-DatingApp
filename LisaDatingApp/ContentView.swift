import SwiftUI

struct ContentView: View {
    @AppStorage("privateJournal") private var journalEntry = ""
    @State private var showMessages = false

    var body: some View {
        NavigationStack {
            Form {
                Section("Private journal") {
                    TextEditor(text: $journalEntry)
                        .frame(minHeight: 180)
                    Text("Saved locally on this device. Journal text is never sent to a server.")
                        .font(.caption)
                        .foregroundStyle(.secondary)
                }

                Section("Conversation practice") {
                    Button("Open respectful message starters") {
                        showMessages = true
                    }
                }

                Section("Privacy") {
                    Label("No account required", systemImage: "person.crop.circle.badge.checkmark")
                    Label("No analytics or cloud upload", systemImage: "lock.shield")
                    Label("No personal photos bundled", systemImage: "photo.badge.checkmark")
                }
            }
            .navigationTitle("Lisa AI Dating Support")
            .sheet(isPresented: $showMessages) {
                MessageTemplateView()
            }
        }
    }
}

struct MessageTemplateView: View {
    var body: some View {
        NavigationStack {
            List {
                Text("Hi, I enjoyed reading about your interests. What are you looking forward to this week?")
                Text("What is a small thing that made you smile recently?")
                Text("What kind of support or kindness do you value in a relationship?")
            }
            .navigationTitle("Message starters")
        }
    }
}
