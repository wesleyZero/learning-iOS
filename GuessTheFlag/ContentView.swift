//
//  ContentView.swift
//  GuessTheFlag
//
//  Created by Wesley Johanson on 1/10/25.
//
import SwiftUI

struct ContentView: View {
    @State private var showingAlert = false
    var body: some View {
//        VStack{
//            Image(systemName: "trash")
//                .imageScale(.large)
//                .foregroundStyle(LinearGradient(colors: [.blue, .pink], startPoint: .leading, endPoint: .trailing))
//            Text("Hello Pain")
//        }
//        .padding()
        Button("Show alert"){
            showingAlert = true
        }
        .alert("Important message", isPresented: $showingAlert) {
            Button("Ok") {}
        }
    }
}

#Preview {
    ContentView()
}
