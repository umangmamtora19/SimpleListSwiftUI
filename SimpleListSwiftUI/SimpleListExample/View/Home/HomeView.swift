//
//  ContentView.swift
//  Practical
//
//  Created by Umang on 23/06/23.
//

import SwiftUI
import SDWebImageSwiftUI

struct HomeView: View {
    @StateObject var homeVM = HomeViewModel()
    @State var animationDelay = 0.5
    
    var body: some View {
        ZStack {
            VStack {
                Picker("", selection: $homeVM.selection) {
                    Text("People").tag(0)
                    Text("Rooms").tag(1)
                }
                .pickerStyle(.segmented)
                .padding()
                .onChange(of: homeVM.selection) { newValue in
                    if newValue == 0 {
                        if homeVM.peopleList.count <= 0 {
                            homeVM.getPeoples()
                        }
                    } else {
                        if homeVM.roomList.count <= 0 {
                            homeVM.getRoomAvailability()
                        }
                    }
                }
                Spacer()
                
                if homeVM.selection == 0 {
                    List(homeVM.peopleList, id: \.id) { person in
                        PeopleCell(person: person)
                    }.animation(.easeIn(duration: 0.2))
                        .modifier(HideIndicator())
                    
                } else {
                    List(homeVM.roomList, id: \.id) { room in
                        RoomCell(room: room) 
                            .listRowBackground(room.isOccupied ? Color.red.opacity(0.1) : Color.white)
                    }.animation(.easeIn(duration: 0.2))
                        .modifier(HideIndicator())
                }
            }
            
            ActivityIndicator($homeVM.isLoading)
        }
        .onAppear {
            homeVM.getPeoples()
        }
        .disabled(homeVM.isLoading)
        
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

