//
//  MoreInfo.swift
//  FinacialApp
//
//  Created by Thiago Souza on 18/05/20.
//  Copyright © 2020 Thiago Souza. All rights reserved.
//

import Foundation

struct MoreInfo: Decodable {
    
  let month: MonthInfo
  let year: YearInfo
  let twelveMonths: TwelveMonths
    
  enum CodingKeys: String, CodingKey {
      case month, year, twelveMonths="12months"
  }
    
}

struct MonthInfo: Decodable {

    let fund: Float
    let cdi: Float
    
    enum CodingKeys: String, CodingKey {
        case fund, cdi="CDI"
    }
    
}

struct YearInfo: Decodable {
    
    let fund: Float
    let cdi: Float
    
    enum CodingKeys: String, CodingKey {
        case fund, cdi="CDI"
    }
}

struct TwelveMonths: Decodable {
    let fund: Float
    let cdi: Float
    
    enum CodingKeys: String, CodingKey {
        case fund, cdi="CDI"
    }
}

