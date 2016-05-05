//
//  ViewController.swift
//  Calculator
//
//  Created by Elijah Parkhurst on 5/4/16.
//  Copyright © 2016 Elijah Parkhurst. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //MARK: Properties
    
    @IBOutlet weak var averageStackTemp: UITextField!
    @IBOutlet weak var volumeCollected: UITextField!
    @IBOutlet weak var barometricPressure: UITextField!
    @IBOutlet weak var staticPressure: UITextField!
    @IBOutlet weak var averageVelocity: UITextField!
    @IBOutlet weak var crossSectionOfNozzle: UITextField!
    @IBOutlet weak var sampleTime: UITextField!
    @IBOutlet weak var moistureContent: UITextField!
    
    
    
    @IBOutlet weak var answerText: UILabel!
    
    
    @IBAction func calculate(sender: AnyObject) {
        
        let Ts:Double? = Double(averageStackTemp.text!)
        let Vm:Double? = Double(volumeCollected.text!)
        let Pb:Double? = Double(barometricPressure.text!)
        let Ps:Double? = Double(staticPressure.text!)
        let Vs:Double? = Double(averageVelocity.text!)
        let An:Double? = Double(crossSectionOfNozzle.text!)
        let theta:Double? = Double(sampleTime.text!)
        let Bws:Double? = Double(moistureContent.text!)
        
        let top = (0.0945*(Ts!+460)*Vm!)
        let bottom = ((Pb!+(Ps!/13.6))*Vs!*An!*theta!*(1-(Bws!/100)))
        let answer = top/bottom
        
        answerText.text = String(answer)
        
    }
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

