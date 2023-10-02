//
//  ContentView.swift
//  task1
//
//  Created by Роман on 01/10/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            GeneralView()
            .tabItem {
                Image(systemName: "star.fill")
                Text("First")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


struct BottomView: View {
    var body: some View {
        VStack {
            Color.red
                 .frame(height: 50)
                 .opacity(0.8)
                 .padding(.top, 0)
        }.background(Color.clear)
    }
}

struct GeneralView: View {
    var body: some View {
        VStack {
            ScrollView {
                ForEach(0..<20) { index in
                    Text("Item \(index)")
                        .frame(maxWidth: .infinity)
                        .padding()
                        .cornerRadius(10)
                }
                
            }.safeAreaInset(edge: .bottom) {
                BottomView().opacity(0.8)
            }
        }
    }
}
