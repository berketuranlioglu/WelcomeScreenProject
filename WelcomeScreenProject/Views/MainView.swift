//
//  MainView.swift
//  WelcomeScreenProject
//
//  Created by Berke Turanlıoğlu on 21.08.2023.
//

import SwiftUI

struct MainView: View {
    
    @AppStorage("isWelcomeScreenOver") var isWelcomeScreenOver = false
    @State var checkWelcomeScreen: Bool = false
    
    var body: some View {
        VStack {
            if checkWelcomeScreen {
                HomeView()
            } else {
                WelcomeView()
            }
        }
        .onAppear {
            checkWelcomeScreen = isWelcomeScreenOver
        }
    }
}

#Preview {
    MainView()
}
