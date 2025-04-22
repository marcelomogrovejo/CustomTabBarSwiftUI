//
//  TabMainButton.swift
//  CustomTabBar.SwiftUI
//
//  Created by Marcelo Mogrovejo on 22/04/2025.
//

import SwiftUI

struct TabMainButton: View {
    
    var iconName: String = "plus.circle"
    var title: String = "Title"
    @Binding var isTapped: Bool
    
    var body: some View {
        Button {
            isTapped = true
        } label: {
            VStack(alignment: .center, spacing: 4) {
                Image(systemName: iconName)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 40, height: 40)
                    .offset(y: -10)

                Text(title)
                    .font(.TabBar.main)
            }
            .padding(20)
//                    .background(Color.brown)
        }
        .tint(.pink)
    }
}

#Preview {
    TabMainButton(isTapped: .constant(false))
}
