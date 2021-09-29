//
//  ViewController.swift
//  CustomView
//
//  Created by Kuramini Mac on 29/09/2021.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var firstView: CustomView!
    @IBOutlet weak var secondView: CustomView!
    @IBOutlet weak var thirdView: CustomView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.firstView.configureView(customLabel: "1st custom label")
        self.secondView.configureView(customLabel: "2nd custom label")
        self.thirdView.configureView(customLabel: "3rd custom label")
        // Do any additional setup after loading the view.
    }


}

