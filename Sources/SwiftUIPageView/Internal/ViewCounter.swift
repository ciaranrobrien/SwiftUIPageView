/**
*  SwiftUIPageView
*  Copyright (c) Ciaran O'Brien 2022
*  MIT license, see LICENSE file for details
*/

import SwiftUI

internal struct ViewCounter: ViewModifier {
    var animationState: AnimationState
    var axis: Axis
    var pageLength: CGFloat
    var pageState: PageState
    var spacing: CGFloat
    
    func body(content: Content) -> some View {
        content
            .transaction { onAnimation($0.animation) }
            .background(
                GeometryReader { geometry in
                    let state = ViewState(pageLength: pageLength, size: geometry.size, spacing: spacing)
                    
                    Color.clear
                        .onAppear { onState(state: state) }
                        .onChange(of: state, perform: onState)
                }
                .hidden()
            )
    }
    
    private func onAnimation(_ animation: Animation?) {
        if animation != animationState.dragAnimation && animationState.viewAnimationCanUpdate {
            animationState.viewAnimation = animation
            animationState.viewAnimationCanUpdate = false
            
            DispatchQueue.main.async {
                animationState.viewAnimationCanUpdate = true
            }
        }
    }
    private func onState(state: ViewState) {
        let count: Int
        let itemLength = state.pageLength + state.spacing
        
        if itemLength > 0 {
            let stackLength: CGFloat
            
            switch axis {
            case .horizontal: stackLength = state.size.width
            case .vertical: stackLength = state.size.height
            }
            
            count = Int(max(round((stackLength + state.spacing) / itemLength), 0))
        } else {
            count = 0
        }
        
        if pageState.viewCount != count {
            withAnimation(animationState.viewAnimation) {
                pageState.viewCount = count
            }
        }
    }
    
    private struct ViewState: Equatable {
        var pageLength: CGFloat
        var size: CGSize
        var spacing: CGFloat
    }
}
