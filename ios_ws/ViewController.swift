//
//  ViewController.swift
//  ios_ws
//
//  Created by zhang_ran@connect.hku.hk on 19/4/2025.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var userNameTF: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if(segue.identifier=="loginToGameBoardSeg"){
            let nav=segue.destination as! UINavigationController
            let vc=nav.topViewController as! GameBoardViewController
            vc.setNavTitle(newUserName: userNameTF.text!)
        }
    }


}

