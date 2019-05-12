//
//  ViewController.swift
//  SpacedPageViewController
//
//  Created by Ahmed Khalaf on 5/12/19.
//  Copyright © 2019 Ahmed Khalaf. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var index = 0
    
    @IBOutlet private weak var leftView: UIView!
    @IBOutlet private weak var rightView: UIView!
}

// MARK: Overrides
extension ViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        [leftView, rightView].forEach({ $0?.layer.borderWidth = 1 })
        
        view.backgroundColor = index % 2 == 0 ? .red : .green
        leftView.backgroundColor = index % 2 != 0 ? .clear : .lightGray
        rightView.backgroundColor = index % 2 == 0 ? .clear : .lightGray
    }
}

// MARK: Factories
extension ViewController {
    static func newViewController() -> ViewController {
        return UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "ViewController") as! ViewController
    }
}

