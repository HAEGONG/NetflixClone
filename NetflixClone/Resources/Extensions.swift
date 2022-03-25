//
//  Extensions.swift
//  NetflixClone
//
//  Created by 이해공 on 2022/03/25.
//

import Foundation

extension String {
    func capitalizeFirstLetter() -> String {
        return self.prefix(1).uppercased() + self.lowercased().dropFirst()
    }
}
