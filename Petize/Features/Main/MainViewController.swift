//
//  MainViewController.swift
//  Petize
//
//  Created by Felix Liman on 02/02/21.
//

import UIKit

class MainViewController: UIViewController {
    lazy var root = MainView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Petize"
        view = root
        // Do any additional setup after loading the view.
    }


}

