//
//  Kingfisher.swift
//  SPMsAndSDKs
//
//  Created by Алан Парастаев on 25.11.2025.
//

import SwiftUI
import Kingfisher

struct KingfisherImageLoader: View {
    
    let url: String
    var contentMode: SwiftUI.ContentMode = .fill
    
    var body: some View {
        KFImage(URL(string: url))
            .placeholder {
                Color.red
            }
            .resizable()
            .aspectRatio(contentMode: contentMode)
    }
}

#Preview {
    KingfisherImageLoader(url: "https://picsum.photos/id/237/200/300",
               contentMode: .fill)
    .frame(width: 200, height: 200)
}
