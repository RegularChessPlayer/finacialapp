//
//  NetWorkManager.swift
//  FinacialApp
//
//  Created by Thiago Souza on 17/05/20.
//  Copyright © 2020 Thiago Souza. All rights reserved.
//

import Alamofire

class NetWorkManager {
    
    private let baseUrl = "https://floating-mountain-50292.herokuapp.com/"
    init() {}

    func fetchCells(completionHandler: @escaping([CellDN]) -> Void) {
        let url = URL(string: baseUrl + "/cells.json")!
        AF.request(url).responseDecodable(of: CellsDN.self) { (response) in
            guard let cells = response.value else { return completionHandler([])}
            return completionHandler(cells.all)
        }
    }
    
    func getScreen(completionHandler: @escaping(Screen) -> Void) {
       let url = URL(string: baseUrl + "/fund.json")!
       AF.request(url).responseDecodable(of: ScreenResult.self) { (response) in
        guard let screen = response.value else { return }
        return completionHandler(screen.result)
       }
    }
    
}

