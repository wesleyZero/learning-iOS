//
//  ContentView.swift
//  ViewsAndModifiers
//
//  Created by Wesley Johanson on 1/12/25.
//

import SwiftUI

//struct ContentView: View {
//    var body: some View {
//        VStack {
//            Button("hello world", systemImage: "trash"){
//                print(type(of: self.body))
//            }
////            Image(systemName: "figure.walk")
////                .imageScale(.large)
////                .foregroundStyle(.black)
////            Text("Hello, world!")
//                
////                .background(.regularMaterial)
//        }
//        .frame(maxWidth: .infinity, maxHeight: .infinity)
//        .padding()
//        .background(LinearGradient(colors: [.cyan, .purple], startPoint: .top, endPoint: .bottom))
////        .opacity(0.5)
//        .backgroundStyle(.thinMaterial)
//        
//    }
//}
//



struct ContentView: View {
    var motto1: some View {
        Text("Harry")
    }
    
    let motto2 = Text("Poop in my mouth")
    
    var spells: some View {
        Group {
            Text("Lumos")
            Text("Obliviate")
        }
    }
   
    @ViewBuilder var spells2: some View {
        Text("Lumos")
        Text("Obliviate")
    }
    
    
    var body: some View {
        spells2
    }
    

}


#Preview {
    ContentView()
}
