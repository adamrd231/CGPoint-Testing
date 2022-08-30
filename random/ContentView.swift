//
//  ContentView.swift
//  random
//
//  Created by Adam Reed on 8/30/22.
//

import SwiftUI

struct ContentView: View {
    
    func randomIn(_ proxy: GeometryProxy) -> CGPoint {
        CGPoint(x: Double.random(in: 0..<proxy.size.width), y: Double.random(in: 0..<proxy.size.height))
//        CGPoint(x: Double.random(in: 0..<proxy.size.width), y: Double.random(in: 0..<proxy.size.height))
    }
    
    func randomInText(width: Double, height: Double) -> CGPoint {
        CGPoint(x: Double.random(in: 0..<width), y: Double.random(in: 0..<height))
//        CGPoint(x: Double.random(in: 0..<proxy.size.width), y: Double.random(in: 0..<proxy.size.height))
    }
    
    @State var testCGPoint: CGPoint = CGPoint(x: 0, y: 0)
    @State var width: Double = 0
    @State var height: Double = 0
    
    var body: some View {
        GeometryReader { proxy in
            VStack {
                HStack {
                    Text(testCGPoint.x.description)
                        .padding()
                    Text(testCGPoint.y.description)
                        .padding()
                }
                
                HStack {
                    Button("Test random inputs") {
                       testCGPoint = randomIn(proxy)
                    }
                    .padding()
                    .border(Color.blue, width: 1)

                    Button("Test 0") {
                        testCGPoint = randomInText(width: 0, height: 1)
                    }
                    .padding()
                    .border(Color.blue, width: 1)
                }
                
            }
            .frame(width: proxy.size.width, height: proxy.size.height, alignment: .center)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
