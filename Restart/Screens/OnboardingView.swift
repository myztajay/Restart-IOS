//
//  OnboardingView.swift
//  Restart
//
//  Created by Rafael Fernandez on 6/7/22.
//

import SwiftUI

struct OnboardingView: View {
    // Quick plist check - if set this is ignored
    @AppStorage("onBoarding") var isOnboardingViewActive = true
    var body: some View {
        VStack(spacing: 20) {
            Text("onboarding")
                .font(.largeTitle)
            Button(action: {
                isOnboardingViewActive = false
            }) {
                Text("start")
            }

        } //End of vstack
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
