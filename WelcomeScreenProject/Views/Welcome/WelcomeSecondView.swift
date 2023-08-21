//
//  WelcomeSecondView.swift
//  WelcomeScreenProject
//
//  Created by Berke Turanlıoğlu on 21.08.2023.
//

import SwiftUI

struct WelcomeSecondView: View {
    
    @AppStorage("isWelcomeScreenOver") var isWelcomeScreenOver = false
    @Environment(\.dismiss) var dismiss
    @State var isPressed: Bool = false
    
    var body: some View {
        NavigationView {
            VStack(spacing: 20) {
                Text("After you press to the next button, Welcome Views will end and not appear anymore.")
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 16)
                
                HStack(spacing: 80) {
                    Button(action: {
                        dismiss()
                    }, label: {
                        HStack(spacing: 8) {
                            Image(systemName: "arrow.left")
                            Text("Previous")
                        }
                    })
                    
                    Button(action: {
                        isPressed = true
                        isWelcomeScreenOver = true
                    }, label: {
                        HStack(spacing: 8) {
                            Text("Next")
                            Image(systemName: "arrow.right")
                        }
                    })
                }
                NavigationLink(destination: HomeView().navigationBarHidden(true),
                               isActive: $isPressed) { EmptyView() }
            }
            .padding(.all)
        }
    }
}

#Preview {
    WelcomeSecondView()
}
