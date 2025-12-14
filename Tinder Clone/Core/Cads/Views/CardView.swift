//
//  CardView.swift
//  Tinder Clone
//
//  Created by Ritesh jung lama on 14/12/2025.
//

import SwiftUI

struct CardView: View {
    @State private var xOffset: CGFloat = 0
    @State private var degrees: Double = 0
    var body: some View {
        ZStack(alignment: .bottom){
            ZStack(alignment: .top){
                Image(.rjlama)
                    .resizable()
                    .scaledToFill()
                    .frame(width: SizeConstants.cardWidth, height: SizeConstants.cardHeight)
                SwipeActionIndicatorView(xOffset: $xOffset, screenCutOff: SizeConstants.screenCutOff)
            }
            UserInfoView()
        }
        .frame(width: SizeConstants.cardWidth, height: SizeConstants.cardHeight)
        .clipShape(RoundedRectangle(cornerRadius: 10))
        .offset(x: xOffset )
        .rotationEffect(.degrees(degrees))
        .animation(.snappy, value: xOffset)
        .gesture(
            DragGesture()
                .onChanged(onDragChanged)
                .onEnded(onDragEnd)
        )
    }
}



private extension CardView{
    func onDragChanged(_ value: _ChangedGesture<DragGesture>.Value){
        xOffset = value.translation.width
        degrees = Double(xOffset) / 25
    }
    func onDragEnd(_ value: _ChangedGesture<DragGesture>.Value)
    {
        print("dasjdlajsdjkasjn")
        let width = value.translation.width
        if (abs(width) < 200)
        {
            withAnimation(.snappy){
                xOffset = 0
                degrees = 0
            }
        }
        
    }
}

#Preview {
    CardView()
}
