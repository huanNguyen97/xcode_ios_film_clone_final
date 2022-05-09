//
//  Extensions.swift
//  Film Clone
//
//  Created by BSP Macbook on 5/4/22.
//

import Foundation


extension String {
    func capitalizeFirstLetter() -> String {
        return self.prefix(1).uppercased() + self.lowercased().dropFirst()
    }
}
