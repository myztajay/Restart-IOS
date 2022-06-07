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
            //MARK: - header
            Spacer()
            ZStack {
                CircleGroupView(shapeColor: .gray, shapeOpacity: 0.2)
                Image("character-2")
                    .resizable()
                    .scaledToFit()
                    .padding()
            }
            //MARK: - center
            Text("The time it take to mastery depends on our focus")
                .font(.title3)
                .fontWeight(.bold)
                .foregroundColor(.secondary)
                .multilineTextAlignment(.center)
                .padding()
            
            //MARK: - footer
            
            Spacer()
            
            Button(action: {
                isOnboardingViewActive = true
            }) {
                Image(systemName: "arrow.triangle.2.circlepath.circle.fill")
                    .imageScale(.large)
                Text("Restart")
                    .font(.system(.title3, design: .rounded))
            }
            .buttonStyle(.borderedProminent)
            .buttonBorderShape(.capsule)
            .controlSize(.large)
            Spacer()
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
