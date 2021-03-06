//
//  Array+bubbleSort.swift
//  AlgorithmsAndDataStructures
//
//  Created by Aleksandr Pronin on 21.01.20.
//  Copyright © 2020 pronin.alx. All rights reserved.
//

/*
 bubble sort algorithm - rank items from the lowest to highest by swapping
 groups of two items from left to right. The highest item in the set will bubble up to the
 right side of the set after the first iteration. performance of O(n2).
 */

import Foundation

extension Array where Element: Comparable {
    func bubbleSort() -> Array<Element> {
        
        
        //check for trivial case
        guard self.count > 1 else {
            return self
        }
        
        
        //mutated copy
        var output: Array<Element> = self
        
        
        for primaryIndex in 0..<self.count {
            
            
            let passes = (output.count - 1) - primaryIndex
            
            
            //"half-open" range operator
            for secondaryIndex in 0..<passes {
                
                let key = output[secondaryIndex]
                
                print("comparing \(key) and \(output[secondaryIndex + 1])")
                
                //compare / swap positions
                if (key > output[secondaryIndex + 1]) {
                    output.swapAt(secondaryIndex, secondaryIndex + 1)
                }
            }
        }
        
        
        return output
        
    }
}
