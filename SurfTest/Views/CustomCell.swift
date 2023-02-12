//
//  CustomCell.swift
//  SurfTest
//
//  Created by Максим Ломакин on 09.02.2023.
//

import UIKit

class CustomCell: UICollectionViewCell {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configUI(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    var widthOfItem:CGFloat = 0
    
    let rectangle = UIView()
    let label     = UILabel()
    
    private func configUI(frame: CGRect) {
        addSubview(label)
        label.text = "Android"
        label.font = .systemFont(ofSize: 14, weight: .medium)
        label.translatesAutoresizingMaskIntoConstraints     = false
        self.backgroundColor = UIColor(named: "buttonColorDis")
        self.layer.cornerRadius = 12
        NSLayoutConstraint.activate([
            //rectangle.widthAnchor.constraint(equalToConstant: widthOfItem),
            //rectangle.heightAnchor.constraint(equalToConstant: 44),
            label.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            label.centerYAnchor.constraint(equalTo: self.centerYAnchor)
        ])
    }
}
