//
//  ListView.swift
//  Sample Assessment 1
//
//  Created by Netaxis on 15/07/25.
//

import SwiftUI

struct ListView: View {
    var body: some View {
        ZStack{
            LinearGradient(colors: [.gray, .white], startPoint: .topLeading, endPoint: .bottomTrailing)
                .ignoresSafeArea()
            VStack{
                Text("List Of Fruits")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundStyle(.white)
                List{
                    NavigationLink(destination: Apple()){
                        VStack{
                                ListDesigns(image: "apple", name: "APPLE")
                        }
                        .frame(width: 330)
                        .overlay{
                            RoundedRectangle(cornerRadius: 20)
                                .stroke(Color.black, lineWidth: 2)
                        }
                    }
                    NavigationLink(destination: Banana()){
                        VStack{
                            ListDesigns(image: "banana", name: "BANANA")
                        }
                        .frame(width: 330)
                        .overlay{
                            RoundedRectangle(cornerRadius: 20)
                                .stroke(Color.black, lineWidth: 2)
                        }
                    }
                    NavigationLink(destination: Orange()){
                        VStack{
                            ListDesigns(image: "orange", name: "ORANGE")
                        }
                        .frame(width: 330)
                        .overlay{
                            RoundedRectangle(cornerRadius: 20)
                                .stroke(Color.black, lineWidth: 2)
                        }
                    }
                    NavigationLink(destination: Grapes()){
                        VStack{
                            ListDesigns(image: "grapes", name: "GRAPES")
                        }
                        .frame(width: 330)
                        .overlay{
                            RoundedRectangle(cornerRadius: 20)
                                .stroke(Color.black, lineWidth: 2)
                        }
                    }
                    NavigationLink(destination: Mango()){
                        VStack{
                            ListDesigns(image: "mango", name: "MANGO")
                        }
                        .frame(width: 330)
                        .overlay{
                            RoundedRectangle(cornerRadius: 20)
                                .stroke(Color.black, lineWidth: 2)
                        }
                    }
                    
                    
                }
            }
           
        }
    }
}

#Preview {
    NavigationStack{
        ListView()
    }
}
