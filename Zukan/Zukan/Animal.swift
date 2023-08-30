//
//  Animal.swift
//  Zukan
//
//  Created by 長島啓太朗 on 2023/08/22.
//

import UIKit

class Animal{
    var name:String
    var details:String
    var imageName:String
    init(name: String, details: String, imageName: String) {
        self.name = name
        self.details = details
        self.imageName = imageName
    }
    func getImage() -> UIImage{
        return UIImage(named: imageName)!
    }
}
