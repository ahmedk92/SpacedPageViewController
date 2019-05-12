//
//  PageViewController.swift
//  SpacedPageViewController
//
//  Created by Ahmed Khalaf on 5/12/19.
//  Copyright © 2019 Ahmed Khalaf. All rights reserved.
//

import UIKit

class PageViewController: UIPageViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setViewControllers([ViewController.newViewController()], direction: .forward, animated: true, completion: nil)
        dataSource = self
    }
}

extension PageViewController: UIPageViewControllerDataSource {
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        
        let index = (viewController as! ViewController).index - 1
        guard index >= 0 else { return nil }
        
        let vc = ViewController.newViewController()
        vc.index = index
        return vc
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        
        let index = (viewController as! ViewController).index + 1
        guard index < 100 else { return nil }
        
        let vc = ViewController.newViewController()
        vc.index = index
        return vc
    }
}
