//
//  SplashModel.swift
//  DemoAuthendication
//
//  Created by Ahmet OZBERK on 8.04.2022.
//

import Foundation
import SwiftUI

class SplashModel{
    var image:String?
    var title:String?
    var description:String?
    init(image:String,title:String,description:String){
        self.image = image
        self.title = title
        self.description = description
    }
}
