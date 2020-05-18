//
//  Screen.swift
//  FinacialApp
//
//  Created by Thiago Souza on 18/05/20.
//  Copyright © 2020 Thiago Souza. All rights reserved.
//

import Foundation

struct ScreenResult: Decodable {
    
    let result: Screen
    
    enum CodingKeys: String, CodingKey {
        case result = "screen"
    }
    
}

struct Screen: Decodable {
    
    let title: String
    let fundName: String
    let whatIs: String
    let definition: String
    let riskTitle: String
    let risk: Int
    let infoTitle: String
    let moreInfo: MoreInfo
    let info: [Info]
    let downInfo: [DownInfo]
    
    enum CodingKeys: String, CodingKey {
        case title, fundName, whatIs, definition, riskTitle, risk, infoTitle, moreInfo, info, downInfo
    }
    
}
