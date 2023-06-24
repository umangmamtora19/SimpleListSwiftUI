//
//  RoomCell.swift
//  Practical
//
//  Created by Umang on 24/06/23.
//

import SwiftUI

struct RoomCell: View {
    let room: Room
    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 5) {
                TextWithValue(title: "CreatedAt:", value: room.createdAt.toDate(format: "yyyy-MM-dd'T'HH:mm:ss.SSS'Z'", format: "dd-MM-yyyy, hh:mm a"))
                TextWithValue(title: "Room ID:", value: room.id)
                TextWithValue(title: "Max Occupancy:", value: "\(room.maxOccupancy ?? 0)")
            }
            Spacer()
        }
    }
}
 
