//
//  GiaiPTBac2.swift
//  GiaiPhuongTrinh
//
//  Created by Duynt on 9/11/14.
//  Copyright (c) 2014 Duynt. All rights reserved.
//

import UIKit

class GiaiPTBac2: UIViewController {
    @IBOutlet weak var a: UITextField!
    @IBOutlet weak var b: UITextField!
    @IBOutlet weak var c: UITextField!
    @IBOutlet weak var d: UITextField!
    @IBOutlet weak var showView: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func giaiPhuongTrinh(sender: UIButton) {
        var hsa = (a.text as NSString).floatValue
        var hsb = (b.text as NSString).floatValue
        var hsc = (c.text as NSString).floatValue
        var hsd = (d.text as NSString).floatValue
        if a.text.isEmpty || b.text.isEmpty || c.text.isEmpty || d.text.isEmpty {
            self.showView.text = "Khong duoc de trong cac o du lieu can nhap vao"
        } else {
            giaiPT(hsa, b: hsb, c: hsc, d: hsd)
        }
    }
    
    func giaiPT(a: Float, b: Float, c: Float, d: Float) ->String{
        var textShow: String! = showView.text
        var delta: Float!
        var x: Float!
        var y: Float!
        delta = b * b - 4 * a * c
        if delta > 0 {
            textShow.write("Delta = \(delta) > 0\n")
            x = (b + sqrt(delta)) / 2 * a
            textShow.write("=> X1 = \(x) \n")
            y = (b - sqrt(delta)) / 2 * a
            textShow.write("=> X2 = \(y) \n")
        } else if delta == 0{
            x = 0 - b / 2 * a
            textShow.write("Delta = \(delta) = 0\n")
            textShow.write("=> X1 = X2 = \(x)")
        } else {
            textShow.write("Delta = \(delta) < 0\n")
            textShow.write("Phuong Trinh Vo Nghiem \n")
        }
        return textShow
    }
}
