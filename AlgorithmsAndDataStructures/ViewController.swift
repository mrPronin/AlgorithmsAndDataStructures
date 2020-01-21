//
//  ViewController.swift
//  AlgorithmsAndDataStructures
//
//  Created by Aleksandr Pronin on 16.01.20.
//  Copyright © 2020 pronin.alx. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        print("is sorted: \(Array(0...3).isSorted)")
        print("is sorted: \([0, 2, 2, 1].isSorted)")
    }


}

