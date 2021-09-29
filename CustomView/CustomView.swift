//
//  CustomView.swift
//  CustomView
//
//  Created by Kuramini Mac on 29/09/2021.
//

import UIKit
@IBDesignable
class CustomView: UIView {
    @IBOutlet weak var customLabel: UILabel!
    @IBOutlet weak var customButton1: UIButton!
    @IBOutlet weak var customButton2: UIButton!
    //Trigger when this view is created programatically
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.configureView()
        print("init frame")
    }
    //Trigger when this view is created from nib
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        self.configureView()
        print("init coder")
    }
    
    private func configureView() {
        guard let view = self.loadViewFromNib(nibName: "CustomView") else {
            return
        }
        view.frame = self.bounds
        self.addSubview(view)
    }
    
    func configureView(customLabel: String) {
        self.customLabel.text = customLabel
    }
}
