//
//  ClientSideInjectionViewController.swift
//  DVIA
//
//  Created by Prateek Gianchandani on 02/12/17.
//  Copyright © 2017 HighAltitudeHacks. All rights reserved.
//

import UIKit

class ClientSideInjectionViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func menuTapped(_ sender: Any) {
        mainViewController?.toogle()
    }
}
