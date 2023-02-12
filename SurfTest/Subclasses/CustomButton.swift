//
//  STButton.swift
//  SurfTest
//
//  Created by Максим Ломакин on 06.02.2023.
//

import UIKit

class CustomButton: UIButton {
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    init(title: String) {
        super.init(frame: .zero)
        setTitle(title, for: .normal)
        configure()
    }
    
    func configure() {
        layer.cornerRadius = 15
        titleLabel?.font = .systemFont(ofSize: 14, weight: .medium)
        backgroundColor = UIColor(named: "buttonColorDis")
        setTitleColor(UIColor(named: "buttonColor"), for: .normal)
        setTitleColor(.white, for: .selected)
        translatesAutoresizingMaskIntoConstraints = false
    }
}
