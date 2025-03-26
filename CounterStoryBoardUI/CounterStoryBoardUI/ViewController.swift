//
//  ViewController.swift
//  CounterStoryBoardUI
//
//  Created by iOS study on 3/26/25.
//

import UIKit

class ViewController: UIViewController {

    var countNumber: Int = 0
    @IBOutlet weak var countLabel: UILabel!
    @IBOutlet weak var upButton: UIButton!
    @IBOutlet weak var downButton: UIButton!
    
    @IBAction func downCount(_ sender: Any) {
        self.countNumber  -= 1
        countLabel.text = "\(self.countNumber)"
        
    }
    
    @IBAction func upCount(_ sender: Any) {
        self.countNumber += 1
        countLabel.text = "\(self.countNumber)"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("화면 작동")
    }


}

