//
//  ScaleSegue.swift
//  CustomTransition
//
//  Created by Sanjay Mali on 23/12/16.
//  Copyright © 2016 Sanjay. All rights reserved.
//

import UIKit

class ScaleSegue: UIStoryboardSegue {
    
    override func perform() {
        sacle()
    }
    
    func sacle(){
        
        let to_Vc = self.destination
        let from_Vc = self.source
        
        let contair_View = from_Vc.view.superview
        let original_Center  = from_Vc.view.center
        to_Vc.view.transform = CGAffineTransform(scaleX:0.05,y:0.05)
        to_Vc.view.center = original_Center
        contair_View?.addSubview(to_Vc.view)
        UIView.animate(withDuration: 0.5, delay: 0.0, options: .curveEaseOut, animations:{
            
          to_Vc.view.transform = CGAffineTransform.identity
        }, completion: { Success in
            from_Vc.present(to_Vc, animated: false, completion: nil)
            
        })
    }
    
}

class UnwindSclae:UIStoryboardSegue{
    
    override func perform() {
        sacle()
    }
    
    func sacle(){
        
        let to_Vc = self.destination
        let from_Vc = self.source
        from_Vc.view.superview?.insertSubview(to_Vc.view, at: 0)
        UIView.animate(withDuration: 0.5, delay: 0.0, options: .curveEaseOut, animations:{
            from_Vc.view.transform = CGAffineTransform(scaleX:0.05,y:0.05)
        }, completion: { Success in
            from_Vc.dismiss(animated: false, completion: nil)
        })
    }
}
