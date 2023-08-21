//
//  HomeView.swift
//  WelcomeScreenProject
//
//  Created by Berke Turanlıoğlu on 21.08.2023.
//

import SwiftUI

struct HomeView: View {
    
    @AppStorage("isWelcomeScreenOver") var isWelcomeScreenOver = false
    
    var body: some View {
        NavigationView {
            VStack(alignment: .leading, spacing: 40) {
                Text("You have passed the welcome screens and now ")
                + Text("isWelcomeScreenOver")
                    .fontDesign(.monospaced)
                    .foregroundColor(.purple)
                + Text(" is set to ")
                + Text("true")
                    .bold()
                    .foregroundColor(.pink)
                
                Text("You will not see Welcome Views anymore unless you delete the app and reinstall.")
                
                Text("You can try it by simply closing the app and reopen from your Simulator.")
                
                Spacer()
                    .frame(height: 40)
            }
            .padding(.horizontal)
            .navigationTitle("Home View")
        }
    }
}

#Preview {
    HomeView()
}
