//
//  CircleImage.swift
//  Landmarks
//
//  Created by tvphuoc on 4/6/20.
//  Copyright © 2020 tvphuoc. All rights reserved.
//

import SwiftUI

struct CircleImage: View {
    var body: some View {
        Image("photo-men")
        .clipShape(Circle())
        .overlay(
            Circle().stroke(Color.white)
        )
        .shadow(radius: 10)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage()
    }
}
