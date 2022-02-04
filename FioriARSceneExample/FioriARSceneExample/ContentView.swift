//
//  ContentView.swift
//  FioriARSceneExample
//
//  Created by Muessig, Kevin on 18.01.22.
//

import SwiftUI
import FioriAR

struct ContentView: View {
    var body: some View {
        NavigationView {
            List {
                NavigationLink(destination: ARSceneAuthoringContentView()) {
                    Text("Create a new AR Scene")
                }
                NavigationLink(destination: ARSceneListContentView()) {
                    Text("Show available AR Scene(s)")
                }
            }.navigationBarTitle("AR Cards Example")
        }.navigationViewStyle(StackNavigationViewStyle())
    }
}
