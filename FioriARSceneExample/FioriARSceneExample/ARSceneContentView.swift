//
//  ARCardsContentView.swift
//  FioriARSceneExample
//
//  Created by Muessig, Kevin on 19.01.22.
//

import SwiftUI
import FioriAR
import SAPFoundation

struct ARSceneContentView: View {
    @StateObject var arModel = ARAnnotationViewModel<CodableCardItem>()
    @StateObject private var asyncStrategy: ServiceStrategy<CodableCardItem>
    var sceneID: Int

    init(sceneID: Int) {
        self.sceneID = sceneID
        self._asyncStrategy = StateObject(wrappedValue: ServiceStrategy<CodableCardItem>(serviceURL: URL(string: AuthenticationParams.redirectURL)!,sapURLSession: AppDelegate.sapURLSession,sceneIdentifier: SceneIdentifyingAttribute.id(sceneID)))
    }
    
    var body: some View {
        ARAnnotationsView(arModel: arModel,
                          cardAction: { id in
                              // set the card action for id corresponding to the CardItemModel
                              print(id)
                          })
            .onAppear(perform: loadInitialData)
    }
    
    func loadInitialData() {
        do {
            try self.arModel.loadAsync(loadingStrategy: asyncStrategy)
        } catch {
            print(error)
        }
    }
}
