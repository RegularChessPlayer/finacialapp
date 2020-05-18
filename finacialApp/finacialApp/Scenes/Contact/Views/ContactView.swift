//
//  ContactView.swift
//  FinacialApp
//
//  Created by Thiago Souza on 17/05/20.
//  Copyright © 2020 Thiago Souza. All rights reserved.
//

import UIKit

class ContactView: UIView {
    
  let tableView: UITableView
    
  override init(frame: CGRect) {
    
     tableView = UITableView()
     super.init(frame: frame)
     setupComponents()
     setupConstraints()
    
  }
  
  required init?(coder aDecoder: NSCoder) {
     fatalError("init(coder:) has not been implemented")
  }
  
  func setupComponents() {
     addSubviewForAutolayout(tableView)
  }
    
  func setupConstraints() {
    
     NSLayoutConstraint.activate([
         tableView.leadingAnchor.constraint(equalTo: leadingAnchor),
         tableView.topAnchor.constraint(equalTo: topAnchor),
         tableView.trailingAnchor.constraint(equalTo: trailingAnchor),
         tableView.bottomAnchor.constraint(equalTo: bottomAnchor)
         ])
  }
    
}
