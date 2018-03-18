//
//  ViewController.swift
//  XERXES
//
//  Created by Joss Manger on 3/16/18.
//  Copyright © 2018 Joss Manger. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var player:XEPlayer!
    override func viewDidLoad() {
        super.viewDidLoad()
        player = XEPlayer()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
       player.play()
    }
    
    
  
}

