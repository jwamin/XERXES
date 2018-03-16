//
//  ViewController.swift
//  XERXES
//
//  Created by Joss Manger on 3/16/18.
//  Copyright © 2018 Joss Manger. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    var audioPlayer:AVAudioPlayer!
    override func viewDidLoad() {
        super.viewDidLoad()
        audioPlayer = AVAudioPlayer()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        do{

            let index = Int(arc4random_uniform(UInt32(ViewController.audioFiles.count)))
            if let asset = NSDataAsset(name:ViewController.audioFiles[index]){
                audioPlayer = try AVAudioPlayer(data: asset.data)
                audioPlayer.play()
            } else {
                print("some kind of error")
            }
            
        }
            
        catch{
            print(error)
        }
    }
    
    
    static let audioFiles = [
        "XXpdie01",
        "xxral202",
        "xxral218",
        "xxrmsg05",
        "xxtur009",
        "XXpdie02",
        "xxral203",
        "xxral219",
        "xxrmsg06",
        "xxtur010",
        "XXpdie03",
        "xxral204",
        "xxral220",
        "xxrmsg07",
        "xxtur011",
        "XXpdie04",
        "xxral205",
        "xxral221",
        "xxrmsg08",
        "xxtur012",
        "XXpdie05",
        "xxral206",
        "xxral222",
        "xxrmsg09",
        "xxtur013",
        "XXpdie06",
        "xxral207",
        "xxral223",
        "xxrmsg10",
        "xxtur014",
        "XXpdie07",
        "xxral208",
        "xxral224",
        "xxrmsg11",
        "xxtur015",
        "XXpdie08",
        "xxral209",
        "xxral225",
        "xxrmsg12",
        "xxtur016",
        "xx4and5c",
        "xxral210",
        "xxral226",
        "xxtur001",
        "xxtur017",
        "xx4xor5c",
        "xxral211",
        "xxral227",
        "xxtur002",
        "xxtur018",
        "xxalrtov",
        "xxral212",
        "xxran001",
        "xxtur003",
        "xxtur019",
        "xxdorhak",
        "xxral213",
        "xxrephak",
        "xxtur004",
        "xxtur020",
        "xxhakexp",
        "xxral214",
        "xxrmsg01",
        "xxtur005",
        "xxtur021",
        "xxhaksec",
        "xxral215",
        "xxrmsg02",
        "xxtur006",
        "xxtur022",
        "xxral101",
        "xxral216",
        "xxrmsg03",
        "xxtur007",
        "xxyal001",
        "xxral201",
        "xxral217",
        "xxrmsg04",
        "xxtur008"
    ];
    
}

