//
//  WelcomeView.swift
//  WelcomeScreenProject
//
//  Created by Berke Turanlıoğlu on 21.08.2023.
//

import SwiftUI

struct WelcomeView: View {
    
    let wavingHand = "👋"
    
    var body: some View {
        NavigationView {
            VStack(spacing: 20) {
                Text("Hello \(wavingHand)")
                    .font(.system(size: 24))
                    .fontWeight(.semibold)
                    .padding(.bottom, 20)
                
                Text("Welcome to the app.")
                
                Text("This project aims to show how to use Welcome Views when the user opens the app for the first time.")
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 16)
                
                NavigationLink(destination: WelcomeSecondView() .navigationBarHidden(true),
                               label: {
                    HStack(spacing: 8) {
                        Text("Next")
                        Image(systemName: "arrow.right")
                    }
                })
                .toolbar(.hidden)
            }
            .padding(.all)
        }
    }
}

#Preview {
    WelcomeView()
}
