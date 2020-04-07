//
//  FeaturedLandmarks.swift
//  Landmarks
//
//  Created by tvphuoc on 4/7/20.
//  Copyright © 2020 tvphuoc. All rights reserved.
//

import SwiftUI

struct FeaturedLandmarks: View {
    var landmarks: [Landmark]
    var body: some View {
        landmarks[0].image.resizable()
    }
}

struct FeaturedLandmarks_Previews: PreviewProvider {
    static var previews: some View {
        FeaturedLandmarks(
            landmarks: landmarkData
        )
    }
}
