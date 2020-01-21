//
//  Array+insertionSort.swift
//  AlgorithmsAndDataStructures
//
//  Created by Aleksandr Pronin on 21.01.20.
//  Copyright © 2020 pronin.alx. All rights reserved.
//

/*
 insertion sort algorithm - rank set of random numbers lowest to highest by
 inserting numbers based on a sorted and unsorted side. performance of O(n2).
 */

import Foundation

extension Array where Element: Comparable {
    func insertionSort() -> Array<Element> {
        
        
        //check for trivial case
        guard self.count > 1 else {
            return self
        }
        
        
        var output: Array<Element> = self
        
        for primaryindex in 0..<output.count {
            
            let key = output[primaryindex]
            print("primaryindex: \(primaryindex)")
            var secondaryindex = primaryindex
            
            
            while secondaryindex > -1 {
                
                print("comparing \(key) and \(output[secondaryindex])")
                
                if key < output[secondaryindex] {
                    
                    //move into correct position
                    output.remove(at: secondaryindex + 1)
                    output.insert(key, at: secondaryindex)
                }
                
                secondaryindex -= 1
            }
            
        }
        print("output: \(output)")
        return output
        
    }
}
