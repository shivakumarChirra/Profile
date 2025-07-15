//
//  ContentView.swift
//  Profile
//
//  Created by shivakumar chirra on 07/07/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            LinearGradient(colors: [.gray, .white], startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea(edges: .all)
            VStack {
                Text("NETAXIS")
                    .padding(.top, -120)
                    .font(.system(size: 50, weight: .bold, design: .default))
                    .foregroundStyle(Designs.textColor)
                Designs.profile
                    .resizable()
                    .frame(width: 200, height: 200)
                VStack(spacing: 30) {
                    Text("Name : Shivakumar")
                        .font(.system(size: 30, weight: .bold, design: .default))
                        .foregroundStyle(Designs.headingColor)
                    Text("Role : Ios Trainee")
                        .font(.system(size: 30, weight: .bold, design: .default))
                        .foregroundStyle(Designs.headingColor)
                    
                    Text("Native : AndhraPradesh")
                        .font(.system(size: 30, weight: .bold, design: .default))
                        .foregroundStyle(Designs.headingColor)
                    
                    
                }
                
                HStack(spacing: 50) {
                    HStack{
                        NavigationLink {
                            Task()
                        } label:{
                            Text("Task's")
                                .font(.system(size: 30, weight: .bold, design: .default))
                        }
                    }
                    
                    HStack{
                        NavigationLink {
                            Task()
                        } label:{
                            Text("Assignment's")
                                .font(.system(size: 30, weight: .bold, design: .default))
                        }
                        
                    }
                    
                }
                
                
            }
            
            
            
        }
        
    }
}

#Preview {
    NavigationStack{
        ContentView()
    }
}
