//
//  PeopleViewModel.swift
//  Practical
//
//  Created by Umang on 23/06/23.
//

import Foundation

class HomeViewModel: ObservableObject {
    @Published var selection = 0
    
    @Published var peopleList = [People]()
    @Published var roomList = [Room]()
    
    @Published var isLoading = false
    
    func getPeoples() {
        var request = URLRequest(url: URL(string: baseURL + Endpoint.people.rawValue)!)
        request.httpMethod = "GET"
        
        isLoading = true
        URLSession.shared.dataTask(with: request) { data, response, error in
            DispatchQueue.main.async {
                if let data = data {
                    do {
                        let json = try JSONSerialization.jsonObject(with: data) as? [[String: Any]] ?? []
                        json.forEach { dic in
                            self.peopleList.append(People(fromDictionary: dic))
                        }
                        self.isLoading = false
                    } catch (let decodingError) {
                        self.isLoading = false
                        appPrint(decodingError.localizedDescription)
                    }
                } else {
                    self.isLoading = false
                    appPrint(error?.localizedDescription ?? "")
                }
            }
        }.resume()
    }
    
    func getRoomAvailability() {
        var request = URLRequest(url: URL(string: baseURL + Endpoint.rooms.rawValue)!)
        request.httpMethod = "GET"
        
        isLoading = true
        URLSession.shared.dataTask(with: request) { data, response, error in
            DispatchQueue.main.async {
                if let data = data {
                    do {
                        let json = try JSONSerialization.jsonObject(with: data) as? [[String: Any]] ?? []
                        json.forEach { dic in
                            self.roomList.append(Room(fromDictionary: dic))
                        }
                        self.isLoading = false
                    } catch (let decodingError) {
                        self.isLoading = false
                        appPrint(decodingError.localizedDescription)
                    }
                } else {
                    self.isLoading = false
                    appPrint(error?.localizedDescription ?? "")
                }
            }
        }.resume()
    }
}

