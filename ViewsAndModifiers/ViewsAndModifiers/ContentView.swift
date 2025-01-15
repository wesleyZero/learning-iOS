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

struct Watermark: ViewModifier {
    var text: String
    
    func body(content: Content) -> some View {
        ZStack(alignment: .bottomTrailing){
            content
            Text(text)
                .font(.caption)
                .foregroundStyle(.white)
                .padding(5)
                .background(.black)
        }
    }
}

extension View {
    func watermarked(with text: String) -> some View {
        modifier(Watermark(text: text))
    }
}

struct GridStack<Content: View> : View {
    let rows: Int
    let columns: Int
    @ViewBuilder let content: (Int, Int) -> Content
    
    var body: some View {
        VStack{
            ForEach(0..<rows, id: \.self) { row in
                HStack {
                    ForEach(0..<columns, id: \.self){ column in
                        content(row, column)
                    }
                }
            }
        }
    }
} // custom container





struct ContentView: View {
    private let rows = 9
    private let columns = 6
    
    var body: some View {
        GridStack(rows: rows, columns: columns) { row, col in
            HStack {
                Image(systemName: "\(row * columns + col).circle")
            }
            .font(.caption)
        }
    }
}


#Preview {
    ContentView()
}
