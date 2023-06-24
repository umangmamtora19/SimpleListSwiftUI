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
                RoomItem(title: "CreatedAt:", value: room.createdAt.toDate(format: "yyyy-MM-dd'T'HH:mm:ss.SSS'Z'", format: "dd-MM-yyyy, hh:mm a"))
                RoomItem(title: "Room ID:", value: room.id)
                RoomItem(title: "Max Occupancy:", value: "\(room.maxOccupancy ?? 0)")
            }
            Spacer()
        }
    }
}

struct RoomItem: View {
    let title: String
    let value: String
    
    var body: some View {
        HStack {
            Text(title)
                .font(.system(.headline))
            Text(value)
        }
    }
}
