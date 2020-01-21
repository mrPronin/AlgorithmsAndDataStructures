//
//  Array+selectionSort.swift
//  AlgorithmsAndDataStructures
//
//  Created by Aleksandr Pronin on 21.01.20.
//  Copyright © 2020 pronin.alx. All rights reserved.
//

/*
 selection sort algorithm - rank items from the lowest to highest by iterating through
 the array and swapping the current iteration with the lowest value in the rest of the array
 until it reaches the end of the array. performance of O(n2).
 */

import Foundation

extension Array where Element: Comparable {
    func selectionSort() -> Array<Element> {
        
        
        //check for trivial case
        guard self.count > 1 else {
            return self
        }
        
        
        //mutated copy
        var output: Array<Element> = self
        
        
        for primaryindex in 0..<output.count {
            
            
            var minimum = primaryindex
            var secondaryindex = primaryindex + 1
            
            
            while secondaryindex < output.count {
                
                print("comparing \(output[minimum]) and \(output[secondaryindex])")
                
                // store lowest value as minimum
                if output[minimum] > output[secondaryindex] {
                    minimum = secondaryindex
                }
                
                secondaryindex += 1
            }
            
            
            // swap minimum value with array iteration
            if primaryindex != minimum {
                output.swapAt(primaryindex, minimum)
                print("output: \(output)")
            }
            
        }
        
        
        return output
        
    }
}
