//
//  ContactTableViewCell.swift
//  FinacialApp
//
//  Created by Thiago Souza on 18/05/20.
//  Copyright © 2020 Thiago Souza. All rights reserved.
//

import UIKit

class ContactCell: UITableViewCell {
    
    static let cellIdentifier = "contactCell"
    
    let titleLabel: UILabel
    let contentText: UITextField
    
    private struct ViewTraits {
        static let margin: CGFloat = 16.0
        static let titleFontSize: CGFloat = 14.0
        static let contentFontSize: CGFloat = 12.0
    }

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
           
           titleLabel = UILabel()
           contentText = UITextField()
           
           super.init(style: style, reuseIdentifier: reuseIdentifier)
           
           setupComponents()
           setupFonts()
           setupConstraints()
       }
       
       required init?(coder aDecoder: NSCoder) {
           fatalError("init(coder:) has not been implemented")
       }
       
       func setupComponents() {
           contentView.addSubviewForAutolayout(titleLabel)
           contentView.addSubviewForAutolayout(contentText)
           titleLabel.numberOfLines = 0
           contentText.delegate = self
           titleLabel.setContentHuggingPriority(UILayoutPriority(rawValue: 1000), for: .vertical)
           contentText.setContentHuggingPriority(UILayoutPriority(rawValue: 999), for: .vertical)
       }
    
       func setupFonts() {
           titleLabel.font = UIFont.systemFont(ofSize: ViewTraits.titleFontSize, weight: .bold)
           contentText.font = UIFont.systemFont(ofSize: ViewTraits.contentFontSize, weight: .light)
       }
    
       func setupConstraints() {
           NSLayoutConstraint.activate([
               titleLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor,
                                                   constant: ViewTraits.margin),
               titleLabel.topAnchor.constraint(equalTo: contentView.topAnchor,
                                               constant: ViewTraits.margin),
               titleLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor,
                                                    constant: -ViewTraits.margin)
               ])
           
           NSLayoutConstraint.activate([
               contentText.leadingAnchor.constraint(equalTo: contentView.leadingAnchor,
                                                     constant: ViewTraits.margin),
               contentText.topAnchor.constraint(equalTo: titleLabel.bottomAnchor,
                                                 constant: ViewTraits.margin),
               contentText.trailingAnchor.constraint(equalTo: contentView.trailingAnchor,
                                                      constant: -ViewTraits.margin),
               contentText.bottomAnchor.constraint(equalTo: contentView.bottomAnchor,
                                                    constant: -ViewTraits.margin)
               ])
       }

}

extension ContactCell: UITextFieldDelegate {
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        print(textField.text)
    }
    
}
