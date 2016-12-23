//
//  ViewController.swift
//  CustomTransition
//
//  Created by Sanjay Mali on 23/12/16.
//  Copyright © 2016 Sanjay. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func prepareForWind(segue:UIStoryboardSegue){
        
    }
    
    override func unwind(for unwindSegue: UIStoryboardSegue, towardsViewController subsequentVC: UIViewController) {
        let segue = UnwindSclae(identifier:unwindSegue.identifier,source:unwindSegue.source,destination:unwindSegue.destination)
        segue.perform()
    }

}

