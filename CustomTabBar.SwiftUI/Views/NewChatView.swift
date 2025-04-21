//
//  NewChatView.swift
//  CustomTabBar.SwiftUI
//
//  Created by Marcelo Mogrovejo on 21/04/2025.
//

import SwiftUI

struct NewChatView: View {

    @Environment(\.dismiss) var dismiss

    var body: some View {
        NavigationView {
            VStack {
                Text("New Chat")

                Spacer()

                Button("Dismiss") {
                    dismiss()
                }
                .buttonStyle(.borderedProminent)
                .tint(.pink)
                .fontWeight(.semibold)
                .controlSize(.large)

            }
            .navigationTitle("New Chat")
        }
    }
}

#Preview {
    NewChatView()
}
