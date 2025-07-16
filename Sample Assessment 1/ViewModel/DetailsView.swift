//
//  DetailsView.swift
//  Sample Assessment 1
//
//  Created by Netaxis on 15/07/25.
//

import SwiftUI

struct DetailsView: View {
    @State private var user: String = ""
    @State private var email : String = ""
    @State private var alertMessage : String = ""
    @State private var showAlert = false
    @State var selectedGender : String = ""
    @State var selectedColor : String = ""
    
    var body: some View {
        ZStack{
            LinearGradient(gradient: Gradient(colors: [.gray, .white]), startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea(.all)
            VStack{
                VStack {
                    
                    Text("Welcome To Login Page")
                        .padding(.top, 150)
                        .font(.system(size: 33, weight: .bold))
                        .foregroundColor(Color.white)
                    TextField("   Enter Your Name", text: $user)
                        .frame(width: 350, height: 30)
                        .background(Color.white)
                        .cornerRadius(5)
                        .padding(.horizontal)
                    
                }
                VStack {
                    TextField("   Enter Your E-mail", text: $email)
                        .frame(width: 350, height: 30)
                        .background(Color.white)
                        .cornerRadius(5)
                        .padding(.horizontal)
                    Text("Recive Notifications")
                        .padding()
                    
                    HStack{
                        Button {
                            alertMessage = "Now You can get Notifications"
                            showAlert = true
                        } label: {
                            ReciveNotificationButton(text: "Yes", color: .green)
                        }
                        Button {
                            alertMessage = "You are not  gettings Notifications"
                            showAlert = true
                        } label: {
                            ReciveNotificationButton(text: "No", color: .red)
                        }
                    }                .alert(alertMessage, isPresented: $showAlert){
                        Button("ok", role: .cancel){}
                        
                    }
                }
                Spacer()
                HStack(spacing: 50) {
                    VStack {
                        Text("Select Your Gender")
                        HStack{
                            Rectangle()
                                .fill(selectedGender == "Male" ? Color.gray : Color.white)
                                .frame(width: 15, height: 15)
                                .onTapGesture {
                                    selectedGender = "Male"
                                }
                            Text("Male")
                                .padding(10)
                            Rectangle()
                                .fill(selectedGender == "Female" ? Color.gray : Color.white)
                                .frame(width: 15, height: 15)
                                .onTapGesture {
                                    selectedGender = "Female"
                                }
                            Text("Female")
                            
                        }
                    }
                    
                    Menu("Select Color"){
                        Button("gary",action: {
                            selectedColor = "gray"
                        })
                        Button("blue",action: {
                            selectedColor = "blue"
                        })
                        Button("purple",action: {
                            selectedColor = "purple"
                        })
                        Button("yellow",action: {
                            selectedColor = "yellow"
                        })
                        Button("cyan",action: {
                            selectedColor = "cyan"
                        })
                        Button("green",action: {
                            selectedColor = "green"
                        })
                    }
                }
                NavigationLink(destination: ProfileView(
                    user: user,
                    email: email,
                    received: alertMessage,
                    selectedGender: selectedGender,
                    color: selectedColor
                )) {
                    Text("Greet Me")
                        .foregroundStyle(.white)
                        .padding()
                        .font(.system(size: 20, weight: .bold))
                        .background(Color.green)
                        .clipShape(Capsule())
                        .padding(.top, 50)
                    
                }
                Spacer()
                
                
                
            }
        }
    }
}


#Preview {
    NavigationStack{
        DetailsView()
    }
}
