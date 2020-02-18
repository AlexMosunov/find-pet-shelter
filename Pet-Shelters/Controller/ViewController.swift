//
//  ViewController.swift
//  Pet-Shelters
//
//  Created by Alex Mosunov on 2/18/20.
//  Copyright © 2020 Alex Mosunov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var appBrain = AppBrain()
    
    @IBOutlet weak var imageLabel: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var addressLabel: UILabel!
    @IBOutlet weak var coordinatorLabel: UILabel!
    @IBOutlet weak var phoneNumberLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        updateUI()
    }

    
    @IBAction func nextPressed(_ sender: UIButton) {
        appBrain.nextShelter()
        updateUI()
    }
    
    func updateUI() {
        nameLabel.text = appBrain.getData(data: "name")
        addressLabel.text = appBrain.getData(data: "address")
        coordinatorLabel.text = appBrain.getData(data: "coordinator")
        phoneNumberLabel.text = appBrain.getData(data: "phoneNumber")
        descriptionLabel.text = appBrain.getData(data: "description")
        
        let imageURL = appBrain.getData(data: "image")
        if let url = URL(string: imageURL) {
            do {
                let data = try Data(contentsOf: url)
                self.imageLabel.image = UIImage(data: data)
            } catch let err {
                print(" Error: \(err.localizedDescription)")
            }
        }
    }

}

