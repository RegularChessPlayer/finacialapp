//
//  CellDN.swift
//  FinacialApp
//
//  Created by Thiago Souza on 17/05/20.
//  Copyright © 2020 Thiago Souza. All rights reserved.
//

import Foundation

struct CellDN: Decodable {
    
    let id: Int
    let type: Int
    let message: String
    let hidden: Bool
    let topSpacing: Float
    let show: Int?
    let required: Bool
    
    enum CodingKeys: String, CodingKey {
        case id, type, message, hidden, topSpacing, show, required
    }
    
}
