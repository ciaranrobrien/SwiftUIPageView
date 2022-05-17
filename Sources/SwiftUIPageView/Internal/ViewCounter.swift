/**
*  SwiftUIPageView
*  Copyright (c) Ciaran O'Brien 2022
*  MIT license, see LICENSE file for details
*/

import SwiftUI

internal struct ViewCounter: ViewModifier {
    @State private var transaction = Transaction()
    
    var axis: Axis
    var pageLength: CGFloat
    var pageState: PageState
    var spacing: CGFloat
    
    func body(content: Content) -> some View {
        content
            .transaction {
                updateTransaction($0)
            }
            .background(
                GeometryReader { geometry in
                    let state = ViewState(pageLength: pageLength, size: geometry.size, spacing: spacing)
                    
                    Color.clear
                        .onAppear {
                            updateCount(from: state)
                        }
                        .onChange(of: state) { newValue in
                            DispatchQueue.main.async {
                                updateCount(from: newValue)
                            }
                        }
                }
                .hidden()
            )
    }
    
    private func updateCount(from state: ViewState) {
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
        
        withTransaction(transaction) {
            pageState.viewCount = count
        }
    }
    private func updateTransaction(_ newValue: Transaction) {
        if transaction.animation != newValue.animation
            || transaction.disablesAnimations != newValue.disablesAnimations
            || transaction.isContinuous != newValue.isContinuous
        {
            DispatchQueue.main.async {
                transaction = newValue
            }
        }
    }
    
    private struct ViewState: Equatable {
        var pageLength: CGFloat
        var size: CGSize
        var spacing: CGFloat
    }
}
