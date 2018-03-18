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
            var sounds:[String] = ViewController.audioFiles
            
            if(UserDefaults.standard.bool(forKey: "include_routines")){
                sounds.append(contentsOf: ViewController.dull_files)
            }
            
            let index = Int(arc4random_uniform(UInt32(sounds.count)))
            print("picked \(index) of \(sounds.count): \(sounds[index])")
            if let asset = NSDataAsset(name:sounds[index]){
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
        "XXpdie02",
        "XXpdie03",
        "XXpdie04",
        "XXpdie05",
        "XXpdie06",
        "XXpdie07",
        "XXpdie08",
        "xx4and5c",
        "xx4xor5c",
        "xxalrtov",
        "xxdorhak",
        "xxhakexp",
        "xxhaksec",
        "xxral101",
        "xxran001",
        "xxrephak",
        "xxrmsg01",
        "xxrmsg02",
        "xxrmsg03",
        "xxrmsg04",
        "xxrmsg05",
        "xxrmsg06",
        "xxrmsg07",
        "xxrmsg08",
        "xxrmsg09",
        "xxrmsg10",
        "xxrmsg11",
        "xxrmsg12",
        "xxyal001"
    ];
    
    static let dull_files = [
        "xxral201",
        "xxral202",
        "xxral203",
        "xxral204",
        "xxral205",
        "xxral206",
        "xxral207",
        "xxral208",
        "xxral209",
        "xxral210",
        "xxral211",
        "xxral212",
        "xxral213",
        "xxral214",
        "xxral215",
        "xxral216",
        "xxral217",
        "xxral218",
        "xxral219",
        "xxral220",
        "xxral221",
        "xxral222",
        "xxral223",
        "xxral224",
        "xxral225",
        "xxral226",
        "xxral227",
        "xxtur001",
        "xxtur002",
        "xxtur003",
        "xxtur004",
        "xxtur005",
        "xxtur006",
        "xxtur007",
        "xxtur008",
        "xxtur009",
        "xxtur010",
        "xxtur011",
        "xxtur012",
        "xxtur013",
        "xxtur014",
        "xxtur015",
        "xxtur016",
        "xxtur017",
        "xxtur018",
        "xxtur019",
        "xxtur020",
        "xxtur021",
        "xxtur022"
    ];
    
}

