//
//  InvestimentInteractor.swift
//  FinacialApp
//
//  Created by Thiago Souza on 17/05/20.
//  Copyright (c) 2020 Thiago Souza. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so
//  you can apply clean architecture to your iOS and Mac projects,
//  see http://clean-swift.com
//

import UIKit

protocol InvestimentBusinessLogic
{
  func doSomething(request: Investiment.Something.Request)
}

protocol InvestimentDataStore
{
  //var name: String { get set }
}

class InvestimentInteractor: InvestimentBusinessLogic, InvestimentDataStore
{
  var presenter: InvestimentPresentationLogic?
  var worker: InvestimentWorker?
  //var name: String = ""
  
  // MARK: Do something
  
  func doSomething(request: Investiment.Something.Request)
  {
    worker = InvestimentWorker()
    worker?.doSomeWork()
    
    let response = Investiment.Something.Response()
    presenter?.presentSomething(response: response)
  }
}
