//
//  ContentView.swift
//  Bookworm
//
//  Created by Izaan Saleem on 21/08/2024.
//

import SwiftUI
import SwiftData

/*struct PushButton: View {
    let title: String
    @Binding var isOn: Bool
    
    var onColors = [Color.red, Color.yellow]
    var offColors = [Color(white: 0.6), Color(white: 0.4)]
    
    var body: some View {
        Button(title) {
            isOn.toggle()
        }
        .padding()
        .background(LinearGradient(colors: isOn ? onColors : offColors, startPoint: .top, endPoint: .bottom))
        .foregroundStyle(.white)
        .clipShape(.capsule)
        .shadow(radius: isOn ? 0 : 5)
    }
}*/

struct ContentView: View {
    
    /*@State private var rememberMe = false
    @AppStorage("notes") private var notes = ""
    @AppStorage("notes1") private var notes1 = ""*/
    
    @Environment(\.modelContext) var modelContext
    @Query var student: [Student]
    
    var body: some View {
        NavigationStack {
            /*VStack {
                PushButton(title: "Remember Me", isOn: $rememberMe)
                Text(rememberMe ? "On" : "Off")
                
                TextEditor(text: $notes)
                                .navigationTitle("Notes")
                                .padding()
                                .border(.black, width: 1)
                TextField("Enter your text", text: $notes1, axis: .vertical)
                                .textFieldStyle(.roundedBorder)
                                .navigationTitle("Notes")
                                .padding()
            }
            .padding()*/
            List(student) { student in
                Text(student.name)
            }
            .navigationTitle("Classroom")
            .toolbar {
                Button("Add") {
                    let firstNames = ["this", "application", "library", "uses", "passed", "invalid", "numeric", "value"]
                    let lastNames = ["you", "want", "backtrace", "set", "portal", "top", "move", "our"]
                    
                    let chosenFirstName = firstNames.randomElement()!
                    let chosenLastName = lastNames.randomElement()!
                    
                    let student = Student(id: UUID(), name: "\(chosenFirstName) \(chosenLastName)")
                    modelContext.insert(student)
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
