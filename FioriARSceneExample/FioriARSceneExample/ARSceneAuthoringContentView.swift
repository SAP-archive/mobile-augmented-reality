//
//  ARCardCreationContentView.swift
//  FioriARSceneExample
//
//  Created by Muessig, Kevin on 18.01.22.
//

import SwiftUI
import FioriAR
import SAPFoundation

enum ScenePersistence: String {
    case key = "ScenePersistence"
}

struct ARSceneAuthoringContentView: View {
    
    @State private var sceneIDs = [ARScene]()
    
    var body: some View {
        SceneAuthoringView(title: "Annotations",
                           serviceURL: URL(string: AuthenticationParams.redirectURL)!,
                           sapURLSession: AppDelegate.sapURLSession)
            .onSceneEdit { sceneEdit in
                switch sceneEdit {
                case .created(card: let card):
                    print("Created: \(card.title_)")
                case .updated(card: let card):
                    print("Updated: \(card.title_)")
                case .deleted(card: let card):
                    print("Deleted: \(card.title_)")
                case .published(sceneID: let sceneID):
                    sceneIDs.append(ARScene(id: sceneID))
                    UserDefaults.standard.set(UserDefaultsHandler.encode(scenes: sceneIDs), forKey: ScenePersistence.key.rawValue)
                    print("From SceneEdit:", sceneID)
                }
            }
    }
}
