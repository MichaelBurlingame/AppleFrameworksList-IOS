//
//  ViewModel.swift
//  Apple-Frameworks
//
//  Created by Michael Burlingame on 2/22/23.
//

import SwiftUI

struct SDK: Hashable {
    let title: String
    let color: Color
    let imageName: String
    let url: String
    let desc: String
}

class InfoList {
    var frameworks: [SDK] = [
        .init(title: "ARKit", color: .black, imageName: "camera.aperture", url: "https://developer.apple.com/augmented-reality/arkit/",
              desc: """
ARKit 6 introduces 4K video, so you can capture stunning high-resolution videos of AR experiences — perfect for professional video editing, film production, social media apps, and more. Video and capture capabilities are expanded with support for HDR video and high-resolution background image capture. ARKit 6 also brings Location Anchors to new cities, such as Montreal, Sydney, Singapore, and Tokyo, and it features improvements to Motion Capture.
"""),
        .init(title: "CallKit", color: .green, imageName: "phone.connection.fill", url: "https://developer.apple.com/documentation/callkit",
              desc: """
Use CallKit to integrate your calling services with other call-related apps on the system. CallKit provides the calling interface, and you handle the back-end communication with your VoIP service. For incoming and outgoing calls, CallKit displays the same interfaces as the Phone app, giving your app a more native look and feel. CallKit also responds appropriately to system-level behaviors such as Do Not Disturb.
""" ),
        .init(title: "HealthKit", color: .red, imageName: "heart.fill", url: "https://developer.apple.com/documentation/healthkit",
              desc: """
HealthKit provides a central repository for health and fitness data on iPhone and Apple Watch. With the user’s permission, apps communicate with the HealthKit store to access and share this data.
"""),
        .init(title: "HomeKit", color: .orange, imageName: "homekit", url: "https://developer.apple.com/documentation/homekit",
              desc: """
HomeKit enables your app to coordinate and control home automation accessories from multiple vendors to present a coherent, user-focused interface.
"""),
        .init(title: "MapKit", color: .cyan, imageName: "map.fill", url: "https://developer.apple.com/documentation/mapkit",
              desc: """
Use MapKit to give your app a sense of place with maps and location information. You can use the MapKit framework to...

Embed maps directly into your app’s windows and views.

Add annotations and overlays to a map to call out points of interest.

Add LookAround capabilities to enable users to explore locations at street level.

Respond to user interactions with well known points of interest, geographical features, and boundaries.

Provide text completion to make it easy for users to search for a destination or point of interest.
"""),
        .init(title: "PencilKit", color: .yellow, imageName: "pencil", url: "https://developer.apple.com/documentation/pencilkit",
              desc: """
PencilKit makes it easy to incorporate hand-drawn content into your iPadOS or macOS apps. PencilKit provides a drawing environment for your iOS app that receives input from Apple Pencil or the user’s finger, and turns it into images you display in iPadOS, iOS, or macOS. The environment comes with tools for creating, erasing, and selecting lines.
"""),
        .init(title: "WebKit", color: .blue, imageName: "globe", url: "https://developer.apple.com/documentation/webkit",
              desc: """
Use the WebKit framework to integrate richly styled web content into your app’s native content. WebKit offers a full browsing experience for your content, offering a platform-native view and supporting classes to,,

Display rich web content using HTML, CSS, and JavaScript

Handle the incremental loading of page content

Display multiple MIME types and compound frame elements

Navigate between pages of content

Manage a forward-back list of recently visited pages
"""),
        .init(title: "StoreKit", color: .brown, imageName: "dollarsign.square", url: "https://developer.apple.com/documentation/storekit",
              desc: """
Use the StoreKit framework to provide the following features and services for your apps and in-app purchases...

In-App Purchase
Offer and promote in-app purchases for content and services.

App transaction
Verify the customer’s app purchase with an App Store-signed transaction.

Ad network attribution
Validate advertisement-driven app installations.

Recommendations
Provide recommendations for third-party content.

Reviews
Request App Store reviews and ratings from your customers.

Messages
Display App Store messages in your app.
""")
    ]
}
