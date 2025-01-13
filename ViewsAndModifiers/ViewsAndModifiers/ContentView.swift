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

struct CapsuleText: View {
    var text: String
    
    var body: some View{
        Text(text)
            .font(.headline)
            .padding()
            .foregroundStyle(.white)
            .background(LinearGradient(colors: [.cyan, .purple], startPoint: .leading, endPoint: .trailing))
            .clipShape(.capsule)
            .shadow(radius: 5)
    }
}

struct MyModifier: ViewModifier{
    func body(content: Content) ->some View {
        content
            .font(.largeTitle)
            .background(.blue)
            .padding()
            .background(.blue)
            .clipShape(.rect(cornerRadius: 2))
    }
}

extension View {
    func titleStyle() -> some View {
        modifier(MyModifier())
    }
} // wow this is really cool 


struct ContentView: View {
    var body: some View {
        VStack(spacing: 10) {
            CapsuleText(text: "first button")
                .opacity(0.5)
            CapsuleText(text: "second Button")
                .modifier(MyModifier())
            CapsuleText(text: "third Button")
                .titleStyle()
                
        }
    }

}


#Preview {
    ContentView()
}
