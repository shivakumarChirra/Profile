//
//  ContentView.swift
//  Sample Assessment 1
//
//  Created by Netaxis on 15/07/25.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        ZStack{
                TabView {
                    DetailsView()
                        .tabItem {
                            Image(systemName: "house.circle")
                            Text("Profile")
                        }
                    ListView()
                        .tabItem {
                            Image(systemName: "photo.artframe.circle.fill")
                           
                            Text("Fruits")
                        }
                    
                }
            
        
        }
    }
}

#Preview {
    NavigationStack{
        MainView()
    }
    
}
