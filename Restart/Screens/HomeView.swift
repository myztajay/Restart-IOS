//
//  HomeView.swift
//  Restart
//
//  Created by Rafael Fernandez on 6/7/22.
//

import SwiftUI

struct HomeView: View {
    @AppStorage("onBoarding") var isOnboardingViewActive: Bool = false
    var body: some View {
        VStack(spacing:20) {
            Text("Home")
                .font(.largeTitle)
            Button(action: {
                print("yo")
                isOnboardingViewActive = true
                //SOME ACTION
            }) {
                Text("Restart")
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
