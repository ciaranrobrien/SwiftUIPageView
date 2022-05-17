/**
*  SwiftUIPageView
*  Copyright (c) Ciaran O'Brien 2022
*  MIT license, see LICENSE file for details
*/

import SwiftUI

internal class PageState: ObservableObject {
    @Published var dragState = DragState.ended
    @Published var index: CGFloat = 0
    @Published var indexOffset: CGFloat = 0
    @Published var initialIndex: CGFloat? = nil
    var offset: CGFloat = 0
    @Published var viewCount = 0
    
    let id = UUID()
    
    enum DragState {
        case dragging
        case ending
        case nearlyEnded
        case ended
    }
}
