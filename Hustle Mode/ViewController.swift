//
//  ViewController.swift
//  Hustle Mode
//
//  Created by Abhishek Goyal on 04/12/17.
//  Copyright © 2017 Abhishek Goyal. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    
    @IBOutlet weak var darkBlueBG: UIImageView!
    @IBOutlet weak var powerBtn: UIButton!
    @IBOutlet weak var cloudHolder: UIView!
    @IBOutlet weak var rocket: UIImageView!
    @IBOutlet weak var hustleLbl: UILabel!
    
    var player: AVAudioPlayer!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let path = Bundle.main.path(forResource: "hustle-on", ofType: "wav")!
        let url = URL(fileURLWithPath: path);
        do{
            player = try AVAudioPlayer(contentsOf: url);
            player.prepareToPlay();
            
        }catch let error as NSError{
            print(error.description);
        }
    }
    
    
    @IBAction func powerBtnPressed(_ sender: Any) {
    
        cloudHolder.isHidden = false;
        darkBlueBG.isHidden = true;
        powerBtn.isHidden = true;
    
        player.play();
        
        UIView.animate(withDuration: 2.3, animations: {
            self.rocket.frame = CGRect(x: 0, y: 20, width: 240, height: 374)
        }) { (finished) in
            self.hustleLbl.isHidden = false;
            
        }
        
        
    }
    
    

}

