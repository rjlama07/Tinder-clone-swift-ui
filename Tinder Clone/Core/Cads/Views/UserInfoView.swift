//
//  UserInfoView.swift
//  Tinder Clone
//
//  Created by Ritesh jung lama on 14/12/2025.
//

import SwiftUI

struct UserInfoView: View {
    var body: some View {
        VStack(alignment: .leading){
            HStack{
                Text("Rj Lama")
                    .font(.title)
                    .fontWeight(.heavy)
                Text("23")
                    .font(.title)
                    .fontWeight(.semibold)
                Spacer()
                Button {
                    
                } label: {
                    Image(systemName: "arrow.up.circle")
                        .tint(.primary)
                }
            }
            Text("Programmer | Designer")
                .font(.subheadline)
                .lineLimit(2)
        }
        .foregroundStyle(.white)
        .padding()
        .background(
            LinearGradient(colors: [.clear,.black], startPoint: .top, endPoint: .bottom)
        )
        
    }
}

#Preview {
    UserInfoView()
}
