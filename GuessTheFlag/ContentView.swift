//
//  ContentView.swift
//  GuessTheFlag
//
//  Created by Wesley Johanson on 1/10/25.
//

import SwiftUI

struct ContentView: View {
    @State private var numOfDeletes: Int = 0
    
    var body: some View {
        //        ZStack(alignment: .top){
        //            Text("this is behind")
        //            Text("This is the second row")
        //            Text("This is the third row")
        //
        //        }
        //
        //        VStack(alignment: .center, spacing: 30){
        //            Text("Hello, world")
        //            Text("this is another text view")
        //        }
        //
        //        HStack(alignment: .top, spacing: 10){
        //            Spacer()
        //            Text("💩")
        //            Spacer()
        //        }
        //
        //        ZStack{
        //            HStack(spacing: 1){
        //                VStack{
        //                    Text(" 1 2 3 ")
        //                    Text(" 3 4 5 ")
        //                    Text(" 6 7 8 ")
        //                }
        //                VStack{
        //                    Text(" 1 2 3 ")
        //                    Text(" 3 4 5 ")
        //                    Text(" 6 7 8 ")
        //                }
        //                VStack{
        //                    Text(" 1 2 3 ")
        //                    Text(" 3 4 5 ")
        //                    Text(" 6 7 8 ")
        //                }
        //            }
        //
        //
        //        }
        //        ZStack{
        //            Color.cyan
        ////                .frame(width: 200, height: 200)
        ////                .frame(minWidth: 10, maxWidth: .infinity, maxHeight: 200)
        //            Text("your content")
        //        }
        //        .ignoresSafeArea()
        ////        .background(.red)
        //        ZStack{
        //            VStack(spacing: 0){
        //                Color.blue
        //                Color.yellow
        //            }
        //            Text("Long Live Ur Mom")
        //                .foregroundStyle(.secondary)
        //                .padding(50)
        //                .background(.ultraThinMaterial)
        //        }
        //        .ignoresSafeArea()
        
        
        //        LinearGradient(colors: [.white, .black], startPoint: .top, endPoint: .bottom)
        //            .ignoresSafeArea()
        //        let x = 0.2
        
        //        ZStack{
        //            AngularGradient(colors: [.red, .yellow,.green,.blue, .purple, .red], center: .center, startAngle: .degrees(0), endAngle: .degrees(30))
        //            LinearGradient(stops: [Gradient.Stop(color: .white, location: 0.5 - x),
        //                                   Gradient.Stop(color: .black, location:0.5 + x)], startPoint: .top, endPoint: .bottom)
        //            .background(.ultraThinMaterial)
        //            .foregroundStyle(.secondary)
        
        //            RadialGradient(colors: [.blue, .black], center: .center, startRadius: 0, endRadius: 200)
        //            RadialGradient(colors: [.red, .yellow,.green,.blue, .purple, .red], center: .center, startRadius: 0, endRadius: 200)
        //            Text("Your content")
        //                .frame(maxWidth: .infinity, maxHeight: .infinity)
        //                .foregroundStyle(.white)
        //                .background(.cyan.gradient)
        //        }
        //        .ignoresSafeArea()
        //            Button("Delete: Number of Deletes = \(numOfDeletes)"){
        //                executeDelete()
        //            }
        //
//                Button("Delete \(numOfDeletes)", role: .destructive, action: executeDelete)
//                .buttonStyle(.bordered)
//                Button("Button 2", role: .cancel, action: {} )
//                    .buttonStyle(.borderedProminent )
//                    .tint(.cyan.opacity(0.5))
//                    .foregroundColor(.black)
        
        ZStack {
            LinearGradient(colors: [.cyan, .black], startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
            VStack {
                Image("Spain")
                Image(systemName: "apple.terminal.fill")
                    .foregroundStyle(.blue.gradient.opacity(0.9))
                Button {
                    
                    print("Button was tapped!")
                } label: {
                    Text("Tap me!")
                        .padding()
                        .foregroundStyle(.white)
                        .background(.cyan.gradient)
                        .buttonStyle(.bordered)
                        .tint(.purple)
                }
                Button("Edit", systemImage: "pencil") {}
                HStack {
                    Spacer()
                    Button {
                        print("Button 4 was tapped")
                    } label: {
                        Image(systemName: "phone.circle")
                        //                        .scaledToFit()
                            .font(.largeTitle)
                        //                        .foregroundColor(.green)
                        //                        .backgrou
                            .foregroundStyle(LinearGradient(colors: [.green, .red], startPoint: .top, endPoint: .bottom))
                        //                    LinearGradient(colors: [.green, .red], startPoint: .top, endPoint: .bottom)
                        
                        //                        .frame(width: 50, height: 50
                    }
                    .frame(width: 100,height:100)
//                    .background(.red)
//                    Spacer(minLength: 10)
 
                }
                
                Button {
                   print("yet another button")
                    
                } label: {
                    Label("Edit", systemImage: "trash")
                }
                .foregroundStyle(LinearGradient(colors: [.cyan, .purple], startPoint: .leading, endPoint: .trailing))
            }
            
        }
        
    } // END OF THE VIEW BODY
    
    func executeDelete() {
//        print("Delete \(numOfDeletes)")
        numOfDeletes += 1
    }
}

#Preview {
    ContentView()
}
