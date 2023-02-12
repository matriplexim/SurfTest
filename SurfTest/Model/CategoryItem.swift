//
//  CategoryItem.swift
//  SurfTest
//
//  Created by Максим Ломакин on 12.02.2023.
//

import Foundation

struct CategoryItem: Hashable, Identifiable {
    let id = UUID()
    let name: String
    let width: CGFloat
}
