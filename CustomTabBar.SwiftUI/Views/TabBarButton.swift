//
//  TabBarButton.swift
//  CustomTabBar.SwiftUI
//
//  Created by Marcelo Mogrovejo on 21/04/2025.
//

import SwiftUI

struct TabBarButton: View {

    var title = ""
    var iconName = ""
    var isMainButton = false
    var tabType: TabsType
    @Binding var selectedTab: TabsType
    var isActive: Bool = false

    var body: some View {
        Button {
            selectedTab = tabType
        } label: {
            VStack(alignment: .center, spacing: 4) {
                Image(systemName: iconName)
                    .resizable()
                    .scaledToFit()
                    .frame(width: isMainButton ? 64 : 24,
                           height: isMainButton ? 64 : 24)

                Text(title)
            }
            .padding(20)
//            .background(Color.brown)
        }
        .frame(width: 100)
        .tint((isMainButton || isActive) ? .pink : .gray)
    }
}

#Preview {
    TabBarButton(title: "Test",
                 iconName: "plus.circle.fill",
                 isMainButton: false,
                 tabType: .chats,
                 selectedTab: .constant(.chats)
//                 ,
//                 isActive: .constant(false)
    )
}

