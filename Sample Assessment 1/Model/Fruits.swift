//
//  Fruits.swift
//  Sample Assessment 1
//
//  Created by Netaxis on 15/07/25.
//

import SwiftUI

struct Apple: View {
    var body: some View {
        ZStack{
            LinearGradient(colors: [.gray, .white], startPoint: .topLeading, endPoint: .bottomTrailing)
                .ignoresSafeArea()
            VStack{
               AboutFruit(fruitname: "APPLE")
                FruitsDesigns(fruitImageName: "apple", fruitName: "Apple", descriptipn: " Apples are round, sweet, and crunchy fruits that grow on trees. They are typically red, green, or yellow and come in various sizes. Apples are a popular snack and can be eaten raw or used in cooking and baking. They are a good source of vitamins, fiber, and antioxidants. ")
            }
        }
    }
}
struct Banana: View {
    var body: some View {
        ZStack{
            LinearGradient(colors: [.gray, .white], startPoint: .topLeading, endPoint: .bottomTrailing)
                .ignoresSafeArea()
            VStack{
                AboutFruit(fruitname: "BANANA")
                FruitsDesigns(fruitImageName: "banana", fruitName: "Banana", descriptipn: "A banana is an elongated, edible fruit, botanically classified as a berry, produced by several species of large, herbaceous plants in the genus Musa. It typically has a curved shape, yellow or green peel (skin), and soft, sweet, starchy flesh inside.")
            }
        }
    }
}
struct Orange: View {
    var body: some View {
        ZStack{
            LinearGradient(colors: [.gray, .white], startPoint: .topLeading, endPoint: .bottomTrailing)
                .ignoresSafeArea()
            VStack{
                AboutFruit(fruitname: "ORANGE")
                FruitsDesigns(fruitImageName: "orange", fruitName: "Orange", descriptipn: "An orange is a round, citrus fruit with a bright orange peel and juicy, sweet-and-tangy flesh. It's a good source of vitamin C and can be eaten raw, juiced, or used in various recipes.")
            }
        }
    }
}
struct Grapes: View {
    var body: some View {
        ZStack{
            LinearGradient(colors: [.gray, .white], startPoint: .topLeading, endPoint: .bottomTrailing)
                .ignoresSafeArea()
            VStack{
                AboutFruit(fruitname: "GRAPES")
                FruitsDesigns(fruitImageName: "grapes", fruitName: "Grapes", descriptipn: "Grapes are small, round or oval berries that grow in clusters on a woody vine. They belong to the Vitaceae family and are botanically classified as a type of berry. Grapes come in a variety of colors, including green, red, purple, black, and even white (which are actually green grapes)")
            }
        }
    }
}
struct Mango: View {
    var body: some View {
        ZStack{
            LinearGradient(colors: [.gray, .white], startPoint: .topLeading, endPoint: .bottomTrailing)
                .ignoresSafeArea()
            VStack{
                AboutFruit(fruitname: "MANGO")
                FruitsDesigns(fruitImageName: "mango", fruitName: "Mango", descriptipn: "Mangoes: Benefits, nutrition, and recipesA mango is a fleshy, oval or kidney-shaped fruit, typically 8–12 centimeters long, with a smooth, sometimes red, yellow, or green skin. The flesh is orange, soft, and sweet, with a large, flat pit in the center")
                
            }
        }
    }
}


#Preview {
    Apple()
}
