//
//  CellsDN.swift
//  FinacialApp
//
//  Created by Thiago Souza on 17/05/20.
//  Copyright © 2020 Thiago Souza. All rights reserved.
//

import Foundation

struct CellsDN: Decodable {
    
    let all: [CellDN]

    enum CodingKeys: String, CodingKey {
      case all = "cells"
    }
    
}
