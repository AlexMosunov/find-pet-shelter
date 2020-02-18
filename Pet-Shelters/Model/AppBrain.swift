//
//  AppBrain.swift
//  Pet-Shelters
//
//  Created by Alex Mosunov on 2/18/20.
//  Copyright © 2020 Alex Mosunov. All rights reserved.
//

import Foundation

struct AppBrain {
    
    var shelterNumber = 0
    
    let shelters = [
        Shelter(name: "Пушистик",
                address: "Одесса, Малиновский район, Варненская 1",
                coordinator: "Светлана Орловская",
                phoneNumber: "+380974762581",
                description: "Мини приют для кошек и собак",
                image: "https://gladpet.org/images/6265/NfjvsLYWgncCX0d0GBvlQsl6u2Pnn0L7_preview.jpg"),
        
        Shelter(name: "4 Лапы",
                address: "Одесса, Суворовский район, хаджибеевская дорога",
                coordinator: "Наталья Ткаченко",
                phoneNumber: "+380639789923",
                description: "Мини приют создан в 2017г. В нем живет постоянно 8 собак, которым не смогли найти дом и 23 собаки и 15 кошек. которые ищут дом. Все животные привиты, стерилизованные по возрасту. есть животные инвалиды",
                image: "https://gladpet.org/images/6114/GiIzsIViH0pgWdWCkDuXvsTTqd80jb6l.jpg"),
    
    ]
    
    func getData(data: String) -> String {
        switch data {
        case "name":
            return shelters[shelterNumber].name
        case "address":
            return shelters[shelterNumber].address
        case "coordinator":
            return shelters[shelterNumber].coordinator
        case "phoneNumber":
            return shelters[shelterNumber].phoneNumber
        case "description":
            return shelters[shelterNumber].description
        case "image":
            return shelters[shelterNumber].image
        default:
            return ""
        }
    }
    
    
    mutating func nextShelter() {
        if shelterNumber < shelters.count - 1 {
            shelterNumber += 1
        } else {
            shelterNumber = 0
        }
    }
    
}
