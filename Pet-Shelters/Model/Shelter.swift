//
//  Shelter.swift
//  Pet-Shelters
//
//  Created by Alex Mosunov on 2/18/20.
//  Copyright © 2020 Alex Mosunov. All rights reserved.
//

import Foundation

struct Shelter {
    
    let name: String
    let address: String
    let coordinator: String
    let phoneNumber: String
    let description: String
    let image: String
    
    init(name: String, address: String, coordinator: String, phoneNumber: String, description: String, image: String) {
        self.name = name
        self.address = address
        self.coordinator = coordinator
        self.phoneNumber = phoneNumber
        self.description = description
        self.image = image
    }
}
