//
//  DestinationView.swift
//  Apple-Frameworks
//
//  Created by Michael Burlingame on 2/22/23.
//

import SwiftUI

struct Destination: View {
    
    var framework: SDK
    
    var body: some View {
        
        VStack {
            
            Label(framework.title,
                  systemImage: framework.imageName)
            .foregroundColor(framework.color)
            .font(.largeTitle).bold()
            .padding(.top, 20)
            .scaleEffect(1.25)
            
            Spacer()
            
            ScrollView {
                Text(framework.desc)
                    .multilineTextAlignment(.center)
                    .lineSpacing(8)
                    .padding()
                    .font(.system(size: 18,
                                  weight: .semibold,
                                  design: .default))
            }
            .frame(height: UIScreen.main.bounds.height / 2.25)
            .background(Color.gray.opacity(0.25))
            .cornerRadius(15)
            .padding()
            
            Spacer()
            
            Link(destination: URL(string: framework.url)!) {
                ZStack {
                    Capsule()
                        .frame(maxWidth: 200, maxHeight: 75)
                        .foregroundColor(.red)
            
                    Text("Read More")
                        .font(.system(size: 18, weight: .semibold, design: .default))
                        .foregroundColor(.white)
                }
                    
            }
        }
    }
}
