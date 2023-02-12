//
//  CustomCollection.swift
//  SurfTest
//
//  Created by Максим Ломакин on 10.02.2023.
//

import UIKit

class CustomCollection: UICollectionView {
    override init(frame: CGRect, collectionViewLayout layout: UICollectionViewLayout) {
        super.init(frame: frame, collectionViewLayout: layout)
        customCollection()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func customCollection() {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        self.frame = .zero
        self.collectionViewLayout = layout
        self.register(CustomCell.self, forCellWithReuseIdentifier: "cell")
        self.backgroundColor = .white
        self.showsHorizontalScrollIndicator = false
        self.translatesAutoresizingMaskIntoConstraints = false
    }
}
