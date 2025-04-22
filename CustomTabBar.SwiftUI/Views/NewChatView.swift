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
        NavigationStack {
            Text("Form here")
                .navigationTitle("New Chat")
                .toolbar {
                    ToolbarItemGroup(placement: .primaryAction) {
                        Button("Cancel") {
                            withAnimation {
                                dismiss()
                            }
                        }
                        .tint(.pink)
                    }
                }
        }
    }
}

#Preview {
    NewChatView()
}
