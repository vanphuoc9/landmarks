//
//  WatchLandmarkDetail.swift
//  WatchLandmarks Extension
//
//  Created by tvphuoc on 4/7/20.
//  Copyright © 2020 tvphuoc. All rights reserved.
//

import SwiftUI

struct WatchLandmarkDetail: View {
    
    @EnvironmentObject var userData: UserData
    var landmark: Landmark
    
     var landmarkIndex: Int {
         userData.landmarks.firstIndex(where: { $0.id == landmark.id })!
     }
    
    var body: some View {
        CircleImage(image: self.landmark.image.resizable())
        .scaledToFill()
    }
}

struct WatchLandmarkDetail_Previews: PreviewProvider {
    static var previews: some View {
        let userData = UserData()
            return Group {
                WatchLandmarkDetail(landmark: userData.landmarks[0]).environmentObject(userData)
                    .previewDevice("Apple Watch Series 4 - 44mm")
                
                WatchLandmarkDetail(landmark: userData.landmarks[1]).environmentObject(userData)
                    .previewDevice("Apple Watch Series 2 - 38mm")
            }
    }
}
