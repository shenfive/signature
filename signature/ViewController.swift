//
//  ViewController.swift
//  signature
//
//  Created by 申潤五 on 2019/11/19.
//  Copyright © 2019 申潤五. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var signatureView: SignantureView!
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func Clean(_ sender: Any) {
        signatureView.clearDraw()
    }
    
}

