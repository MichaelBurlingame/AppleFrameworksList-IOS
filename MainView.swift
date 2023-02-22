//
//  MainView.swift
//  Apple-Frameworks
//
//  Created by Michael Burlingame on 2/22/23.
//

import SwiftUI


struct MainView: View {
    
    @State private var info = InfoList()
    
    var body: some View {
        
        NavigationStack {
            
            List {
                
                Section {
                    
                    ForEach(info.frameworks, id: \.title) { framework in
                        
                        NavigationLink(value: framework) {
                            
                            HStack {
                                
                                Image(systemName: framework.imageName)
                                    .foregroundColor(framework.color)
                                    .scaleEffect(2)
                                    .padding(.leading, 30)
                                
                                Spacer()
                                
                                Text(framework.title)
                                    .scaleEffect(1.25)
                                    .monospaced()
                                    .bold()
                                
                                Spacer()

                            }
                            .frame(minHeight: UIScreen.main.bounds.height / 10)
                        }
                    }
                }
            }
            .navigationTitle("Apple Frameworks")
            .navigationDestination(for: SDK.self) { framework in
                Destination(framework: framework)
            }
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
