//
//  Array+isSorted.swift
//  AlgorithmsAndDataStructures
//
//  Created by Aleksandr Pronin on 21.01.20.
//  Copyright © 2020 pronin.alx. All rights reserved.
//

import Foundation

extension Array where Element: Comparable {
    var isSorted: Bool {
        guard self.count >= 1 else { return true }
        return zip(self, self.dropFirst()).allSatisfy(<=)
    }
}
