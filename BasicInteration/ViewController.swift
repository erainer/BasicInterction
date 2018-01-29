//
//  ViewController.swift
//  BasicInteration
//
//  Created by Emily on 1/29/18.
//  Copyright © 2018 Emily Rainer. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func buttonPressed(_ sender: UIButton) {
        let title = sender.title(for: .selected)!
        let text = "\(title) button pressed"
        let styledText = NSMutableAttributedString(string:text)
        let attributes = [NSAttributedStringKey.font: UIFont.boldSystemFont(ofSize: statusLabel.font.pointSize)]
        let nameRange = (text as NSString).range(of: title)
        styledText.setAttributes(attributes, range: nameRange)
        
        statusLabel.attributedText = styledText
    }
    
    @IBOutlet weak var statusLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

