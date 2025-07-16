//
//  ProfileView.swift
//  Sample Assessment 1
//
//  Created by Netaxis on 15/07/25.
//

import SwiftUI

struct ProfileView: View {
    @State var user: String = ""
    @State var email: String = ""
    @State var received = ""
    @State var selectedGender : String = ""
    @State var color = ""
    var backgroundGradient: LinearGradient {
        switch color {
        case "gray":
            return LinearGradient(gradient: Gradient(colors: [.gray, .white]), startPoint: .topLeading, endPoint: .bottomTrailing)
        case "blue":
            return LinearGradient(gradient: Gradient(colors: [.blue, .white]), startPoint: .topLeading, endPoint: .bottomTrailing)
        case "purple":
            return LinearGradient(gradient: Gradient(colors: [.purple, .white]), startPoint: .topLeading, endPoint: .bottomTrailing)
        case "green":
            return LinearGradient(gradient: Gradient(colors: [.green, .white]), startPoint: .topLeading, endPoint: .bottomTrailing)
        case "yellow":
            return LinearGradient(gradient: Gradient(colors: [.yellow, .white]), startPoint: .topLeading, endPoint: .bottomTrailing)
        case "cyan":
            return LinearGradient(gradient: Gradient(colors: [.cyan, .white]), startPoint: .topLeading, endPoint: .bottomTrailing)
        default:
            return LinearGradient(gradient: Gradient(colors: [.cyan, .white]), startPoint: .topLeading, endPoint: .bottomTrailing)
        }
    }
    var body: some View {
        ZStack{
          backgroundGradient
                .ignoresSafeArea(.all)
                
            VStack{
                Text("The Details Previously You Selected")
                    .font(.system(size: 24, weight: .bold))
                    .foregroundStyle(.white)
                Text("Your Name is \(user)")
                    
                Text("Your E-Mail is \(email)")
                Text("Received Messages = \(received)")
                Text("Your Selected Gender is  = \(selectedGender)")
                Text("You Selected Color is = \(color)")
            }
        }
    }
}

#Preview {
    ProfileView()
}

