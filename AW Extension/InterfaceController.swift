//
//  InterfaceController.swift
//  AW Extension
//
//  Created by Joss Manger on 3/18/18.
//  Copyright © 2018 Joss Manger. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    var player: WKAudioFilePlayer!
    
    @IBOutlet var image: WKInterfaceImage!
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
    
        // Configure interface objects here.
    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
   
//        if let fileURL = Bundle.main.url(forResource: "xxrmsg01", withExtension: "wav"){
//            let asset = WKAudioFileAsset(url: fileURL)
//            let playerItem = WKAudioFilePlayerItem(asset: asset)
//            print(fileURL)
//            player = WKAudioFilePlayer(playerItem: playerItem)
//            player.play()
//        } else {
//            print("something didnt world")
//        }

        
    }
   
    @IBAction func tappd(_ sender: Any) {
        
        let del = WKExtension.shared().delegate as! ExtensionDelegate
        
      del.callPhone()
        
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
