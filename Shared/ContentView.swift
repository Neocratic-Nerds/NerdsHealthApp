//
//  ContentView.swift
//  Shared
//
//  Created by Koen Flynn on 3/19/21.
//

import SwiftUI
import UIKit
struct ContentView: View {
    //Secondary View Screen
    struct View2: View {
        @State private var Instructions = false
            var body: some View {
                VStack(spacing: 50){
                NavigationLink(destination: ContentView()) {
                    Text("                Physical Workout             ")
                        .foregroundColor(Color.white)
                        .padding(.all, 15.0)
                        .buttonStyle(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=Button Style@*/DefaultButtonStyle()/*@END_MENU_TOKEN@*/)
                        .border(Color.blue, width: /*@START_MENU_TOKEN@*/2/*@END_MENU_TOKEN@*/)
                        .background(Color.blue)
                        .cornerRadius(/*@START_MENU_TOKEN@*/10.0/*@END_MENU_TOKEN@*/)
                }
                NavigationLink(destination: ContentView()) {
                    Text("                 Mental Workout              ")
                        .foregroundColor(Color.white)
                        .padding(.all, 15.0)
                        .buttonStyle(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=Button Style@*/DefaultButtonStyle()/*@END_MENU_TOKEN@*/)
                        .border(Color.blue, width: /*@START_MENU_TOKEN@*/2/*@END_MENU_TOKEN@*/)
                        .background(Color.blue)
                        .cornerRadius(/*@START_MENU_TOKEN@*/10.0/*@END_MENU_TOKEN@*/)
                }
                }
                Toggle(isOn: $Instructions) {
                            Text("Would you like instructions?")}
                    .toggleStyle(SwitchToggleStyle())
                    .padding([.top, .leading, .trailing], 50)
                    .navigationTitle("Ready?")
            }
        }
    var body: some View {
        //Calls for all elements to be in a navigation view to change screens
        NavigationView{
            //Vertically stacks all elements on this screen
            VStack(spacing: 50){
                //creates a rounded rectangle for the Start Session button
                NavigationLink(destination: View2()) {
                    Text("                 Start Session               ")
                        .foregroundColor(Color.white)
                        .padding(.all, 15.0)
                        .buttonStyle(/*@PLACEHOLDER=Button Style@*/DefaultButtonStyle())
                        .border(Color.blue, width: 2)
                        .background(Color.blue)
                        .cornerRadius(10.0)
                }
                //creates a second rounded rectangle for other information
                RoundedRectangle(cornerRadius: 10)
                    .inset(by: 0)
                    .stroke(Color.gray, lineWidth: 2)
                    .frame(width: 200, height: 150.0)
                    .padding(.bottom, 200.0)
                    //Top Title and Settings
                    .navigationBarItems(leading: Text("Welcome!")
                                            .font(.title)
                                            .fontWeight(.bold), trailing: Image(systemName: "gear").foregroundColor(.blue))
            }
        }
       }
     }



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
    }
  }

