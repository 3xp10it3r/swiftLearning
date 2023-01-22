//
//  ContentView.swift
//  SwiftUI-Form
//
//  Created by Digvijay Gupta on 23/01/23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var firstName = ""
    @State private var lastName  = ""
    @State private var birthDate = Date()
    @State private var numberOfLikes = 1
    @State private var shouldSendNewsLetter = false
    @State private var circleColour : Color = .red
    
    var body: some View {
        NavigationView{
           
            Form {
                
                
                Section(header: Text("Personnal Information")) {
                    TextField("First Name", text: $firstName)
                    TextField("Last Name",text: $lastName)
                    DatePicker("BirthDate", selection: $birthDate, displayedComponents: .date)
                }
                
                
                
                Section(header: Text("Action")) {
                    Toggle("Send Newsletter", isOn: $shouldSendNewsLetter)
                        .toggleStyle(SwitchToggleStyle(tint: .red))
                    Stepper("Number of Likes", value: $numberOfLikes, in: 1...100)
                    Text("My account has \(numberOfLikes) likes")
                    
                    Link("Terms of Service", destination: URL(string: "https://google.com")!)
                }
                
                Section(header: Text("Color")) {
                    Circle()
                        .foregroundColor(circleColour)
                        .frame(width:50,height: 50)
                    ColorPicker("Choose Color", selection: $circleColour)
                }
                
            }
            .navigationTitle("Account")
        
            .toolbar {
                ToolbarItemGroup {
                    Button {
                        hideKeyboard()
                    } label: {
                        Image(systemName: "keyboard.chevron.compact.down")
                    }
                    
                    Button("Save",action: saveUser)
                }
            }
        }
        .accentColor(.red)
        
    }
    
    func saveUser() {
        print("Saved User!")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


#if canImport(UIKit)
extension View {
    func hideKeyboard(){
        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
#endif
