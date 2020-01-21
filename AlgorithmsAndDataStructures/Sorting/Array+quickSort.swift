//
//  Array+quickSort.swift
//  AlgorithmsAndDataStructures
//
//  Created by Aleksandr Pronin on 21.01.20.
//  Copyright © 2020 pronin.alx. All rights reserved.
//

/*
 quicksort algorithm - Ranks numbers through a series of swaps.
 Based on "conceptually" sorting a collection subset based on a "wall" and "pivot".
 Best case performance of O(n log(n)). Worst case performance of O(n2).
 */

import Foundation

extension Array where Element: Comparable {
    mutating func quickSort() -> Array<Element> {
        
        func qSort(start startIndex: Int, _ pivot: Int) {
            
            if (startIndex < pivot) {
                let iPivot = qPartition(start: startIndex, pivot)
                qSort(start: startIndex, iPivot - 1)
                qSort(start: iPivot + 1, pivot)
            }
        }
        
        qSort(start: 0, self.endIndex - 1)
        return self
        
    }
    mutating func qPartition(start startIndex: Int, _ pivot: Int) -> Int {
        
        var wallIndex: Int = startIndex
        
        //compare range with pivot
        for currentIndex in wallIndex..<pivot {
            
            print("current is: \(self[currentIndex]). pivot is \(self[pivot])")
            
            if self[currentIndex] <= self[pivot] {
                if wallIndex != currentIndex {
                    self.swapAt(currentIndex, wallIndex)
                    print("self: \(self)")
                }
                
                //advance wall
                wallIndex += 1
            }
        }
        
        
        //move pivot to final position
        if wallIndex != pivot {
            self.swapAt(wallIndex, pivot)
            print("self: \(self)")
        }
        
        return wallIndex
        
    }
}
