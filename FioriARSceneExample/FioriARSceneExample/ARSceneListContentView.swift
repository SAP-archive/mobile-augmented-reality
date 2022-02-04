//
//  ARSceneListContentView.swift
//  FioriARSceneExample
//
//  Created by Muessig, Kevin on 25.01.22.
//

import SwiftUI

struct SceneRow: View {
    var scene: ARScene
    
    var body: some View {
        NavigationLink(destination: ARSceneContentView(sceneID: scene.id)) {
            Text(String(scene.id))   
        }
    }
}

struct ARSceneListContentView: View {
    
    var body: some View {
        NavigationView {
            if let sceneIDs = UserDefaultsHandler.decodeSceneIDs() {
                List(sceneIDs) { sceneID in
                    SceneRow(scene: sceneID)
                }
                .navigationBarTitle("Available AR Scenes")
            } else {
                Text("No scenes available")
            }
        }.navigationViewStyle(StackNavigationViewStyle())
    }
}
