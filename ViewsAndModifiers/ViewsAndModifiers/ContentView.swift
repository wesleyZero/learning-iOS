//
//  ContentView.swift
//  ViewsAndModifiers
//
//  Created by Wesley Johanson on 1/12/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Button("hello world", systemImage: "trash"){
                print(type(of: self.body))
            }
//            Image(systemName: "figure.walk")
//                .imageScale(.large)
//                .foregroundStyle(.black)
//            Text("Hello, world!")
                
//                .background(.regularMaterial)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .padding()
        .background(LinearGradient(colors: [.cyan, .purple], startPoint: .top, endPoint: .bottom))
//        .opacity(0.5)
        .backgroundStyle(.thinMaterial)
        
    }
}

#Preview {
    ContentView()
}
