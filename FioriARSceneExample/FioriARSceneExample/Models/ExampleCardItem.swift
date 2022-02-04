//
//  ExampleCardItem.swift
//  FioriARSceneExample
//
//  Created by Muessig, Kevin on 18.01.22.
//

import SwiftUI
import FioriAR

public struct ExampleCardItem: CardItemModel {
    public var id: Int
    public var title_: String
    public var subtitle_: String?
    public var detailImage_: Data?
    public var image_: CardImage?
    public var actionText_: String?
    public var actionContentURL_: URL?
    public var icon_: String?
    /// Vector of three scalar values
    public var position_: SIMD3<Float>?
}
