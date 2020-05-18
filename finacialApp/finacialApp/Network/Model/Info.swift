//
//  Info.swift
//  FinacialApp
//
//  Created by Thiago Souza on 18/05/20.
//  Copyright © 2020 Thiago Souza. All rights reserved.
//

import Foundation

struct Info: Decodable  {
    
    let name: String
    let data: String
    
    enum CodingKeys: String, CodingKey {
        case name, data
    }
    
}
