////
////  WatchMapView.swift
////  Landmarks
////
////  Created by tvphuoc on 4/7/20.
////  Copyright © 2020 tvphuoc. All rights reserved.
////
//
//import SwiftUI
//
//struct WatchMapView: WKInterfaceObjectRepresentable {
//    var landmark: Landmark
//
//    func makeWKInterfaceObject(context: WKInterfaceObjectRepresentableContext<WatchMapView>) -> WKInterfaceMap {
//        // Return the interface object that the view displays.
//        return WKInterfaceMap()
//    }
//
//    func updateWKInterfaceObject(_ map: WKInterfaceMap, context: WKInterfaceObjectRepresentableContext<WatchMapView>) {
//        // Update the interface object.
//        let span = MKCoordinateSpan(latitudeDelta: 0.02,
//                                    longitudeDelta: 0.02)
//
//        let region = MKCoordinateRegion(
//            center: landmark.locationCoordinate,
//            span: span)
//
//        map.setRegion(region)
//    }
//}
//
//struct WatchMapView_Previews: PreviewProvider {
//   static var previews: some View {
//        WatchMapView(landmark: UserData().landmarks[0])
//    }
//}
