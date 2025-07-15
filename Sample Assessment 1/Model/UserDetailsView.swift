//
//  UserDetailsView.swift
//  Sample Assessment 1
//
//  Created by Netaxis on 15/07/25.
//


import SwiftUI

import Foundation

struct imageView: View {
    var image = ""
    var body: some View {
        Image(image)
            .resizable()
            .frame(width: 100, height: 100)
    }
}

struct textDesigns:View {
    var text:String = ""
    var body: some View {
        Text(text)
            .font(.system(size: 17, weight: .bold))
    }
}

struct ListDesigns: View{
     var image: String
    var name: String
    var body: some View {
        HStack(spacing: 60){
            Image(image)
                .resizable()
                .frame(width: 80)
                .frame(height: 70)
            Text(name)
                .font(.system(size: 30, weight: .bold))
                .padding(20)
        }
    }
}

struct FruitsDesigns:View{
    var fruitImageName = ""
    var fruitName : String = ""
    var descriptipn: String = ""
    var body: some View {
        VStack{
            HStack{
                Image(fruitImageName)
                    .resizable()
                    .frame(width: 180, height: 180)
                Text(fruitName)
                    .foregroundStyle(.white)
                    .font(.system(size: 40, weight: .bold))
                    
            }
            Text(descriptipn)
                .font(.system(size: 20, weight: .semibold))
                .padding()
        }
        .padding(5)
        .overlay{
            RoundedRectangle(cornerRadius: 8)
                .stroke(Color.black, lineWidth: 2)
                .padding(5)
        }
    }
}
    

struct AboutFruit: View{
    var fruitname = ""
    var body: some View{
        Text( "About \(fruitname)")
            .foregroundStyle(.white)
            .font(.system(size: 50, weight: .bold))
    }
}

struct ReciveNotificationButton : View {
    var text = ""
    var color: Color
    var body: some View {
        Text(text)
            .foregroundStyle(.white)
            .padding(10)
            .font(.headline)
            .background(color)
            .clipShape(Capsule())
            .padding(10)
    }
}

