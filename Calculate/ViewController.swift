//
//  ViewController.swift
//  Calculate
//
//  Created by Lin-Kai Huang on 3/22/16.
//  Copyright © 2016 Lin-Kai Huang. All rights reserved.
//

import UIKit



class ViewController: UIViewController {

    var tmp : String = ""
    var number : [Double]=[0,0]
    var result : Double=0
    var operater = 0
    var prepost=0;
    var dot = 2.0
    var decide=0
    var twicepost=0.0
    var twiceoperator=0
    var a=1
    var T=0
    
    func negzero(var X:String) -> String {
        if(X=="-0"){
        X = "-"
        }
        return X
    }
    func oper(){
        if(operater==1){
            result = number[0] + number[1]        }
        else if(operater==2){
            result = number[0] - number[1]
        }
        else if(operater==3){
            result = number[0] * number[1]
        }
        else if(operater==4){
            result = number[0] / number[1]
        }
    }
 
    @IBAction func bt0(sender: AnyObject) {
        if(tmp != ""){tmp=negzero(tmp)}
        decide=0
        if( tmp != ""){
            if(dot==2){
                number[prepost] *= 10
                number[prepost] = number[prepost] + 0
            }
        else {
            dot *= 0.1
            number[prepost] += dot*0
            }}
        if(a==0){
            number[prepost] *= -1
                    }
        tmp = NSString(format:"%g",number[prepost]) as String;
            if(number[prepost]%1==0 && T>=1 ){
            tmp += "."
            ++T
            for var i = 1 ;i<T;++i{
            tmp += "0"
            }
        }
        display.text=tmp
      }
    @IBAction func bt1(sender: AnyObject) {
        decide=0
        tmp=negzero(tmp)
        tmp += String("1")
        display.text=tmp
        if(dot==2){
            number[prepost] *= 10
            number[prepost] = number[prepost] + 1}
        else{
            dot *= 0.1
            number[prepost] += dot*1
        }
        if(a==0){
            number[prepost] *= -1
            a=1
        }
    }
    @IBAction func bt2(sender: AnyObject) {
        decide=0
        tmp=negzero(tmp)
        tmp += String("2")
        display.text=tmp
        if(dot==2){
            number[prepost] *= 10
            number[prepost] = number[prepost] + 2}
        else{
            dot *= 0.1
            number[prepost] += dot*2
        }
        if(a==0){
            number[prepost] *= -1
            a=1
        }
    }
    @IBAction func bt3(sender: AnyObject) {
        decide=0
        tmp=negzero(tmp)
        tmp += String("3")
    display.text=tmp
        if(dot==2){
            number[prepost] *= 10
            number[prepost] = number[prepost] + 3}
        else{
            dot *= 0.1
            number[prepost] += dot*3
        }
        if(a==0){
            number[prepost] *= -1
            a=1
        }
    }
    @IBAction func bt4(sender: AnyObject) {
        decide=0
        tmp=negzero(tmp)
        tmp += String("4")
display.text=tmp
        if(dot==2){
            number[prepost] *= 10
            number[prepost] = number[prepost] + 4}
        else{
            dot *= 0.1
            number[prepost] += dot*4
        }
        if(a==0){
            number[prepost] *= -1
            a=1
        }
    }
    @IBAction func bt5(sender: AnyObject) {
        decide=0
        tmp=negzero(tmp)
        tmp += String("5")
display.text=tmp
        if(dot==2){
            number[prepost] *= 10
            number[prepost] = number[prepost] + 5}
        else{
            dot *= 0.1
            number[prepost] += dot*5
        }
        if(a==0){
            number[prepost] *= -1
            a=1
        }
    }
    @IBAction func bt6(sender: AnyObject) {
        decide=0
        tmp=negzero(tmp)
        tmp += String("6")
        display.text=tmp
        if(dot==2){
            number[prepost] *= 10
            number[prepost] = number[prepost] + 6}
        else{
            dot *= 0.1
            number[prepost] += dot*6
        }
        if(a==0){
            number[prepost] *= -1
            a=1
        }
}
    
    @IBAction func bt7(sender: AnyObject) {
        decide=0
        tmp=negzero(tmp)
        tmp += String("7")
        display.text=tmp
        if(dot==2){
            number[prepost] *= 10
            number[prepost] = number[prepost] + 7}
        else{
            dot *= 0.1
            number[prepost] += dot*7
        }
        if(a==0){
            number[prepost] *= -1
            a=1
        }
    }
    @IBAction func bt8(sender: AnyObject) {
        decide=0
        tmp=negzero(tmp)
        tmp += String("8")
display.text=tmp
        if(dot==2){
            number[prepost] *= 10
            number[prepost] = number[prepost] + 8}
        else{
            dot *= 0.1
            number[prepost] += dot*8
        }
        if(a==0){
            number[prepost] *= -1
            a=1
        }
}
    @IBAction func bt9(sender: AnyObject) {
        decide=0
        tmp=negzero(tmp)
        tmp += String("9")
        if(dot==2){
            number[prepost] *= 10
            number[prepost] = number[prepost] + 9}
        else{
            dot *= 0.1
            number[prepost] += dot*9
        }
        display.text=tmp
        if(a==0){
            number[prepost] *= -1
            a=1
        }
    }
  
    @IBAction func dot(sender: UIButton) {
        if(dot==2){
            if(tmp == ""){
                tmp += String("0")
            }
            tmp += String(".")
            display.text=tmp
            dot=1
        ++T}
    }
    
    

    @IBAction func btequal(sender: AnyObject) {
        a=1
        if (decide == 0){
        if(operater != 0){
            oper()
            number[0]=result
            tmp = NSString(format:"%g",result) as String;
            display.text=tmp
            twiceoperator=operater
            twicepost=number[1]
            number[1]=0
            operater = 0
              decide=1
            tmp=""}}
        else if(decide != 0){
            number[1] = twicepost
            operater = twiceoperator
            oper()
            number[0]=result
            tmp = NSString(format:"%g",result) as String;
            display.text=tmp
             number[1]=0
            operater = 0
                  tmp=""        }
        dot=2
        T=0
    }
   
     @IBAction func bbtplus(sender: UIButton) {
        decide=0
        a=1
        if(number[1]==0){
            operater=1
            prepost=1;
            tmp=""
        }
        else{
            oper()
            operater=1
            number[0]=result
            tmp = NSString(format:"%g",result) as String;
            display.text=tmp
            number[1]=0
            tmp=""}
        T=0
        dot=2
    }
    
    @IBAction func btsub(sender: AnyObject) {
        decide=0
        a=1
        T=0
        if(number[1]==0){
            operater=2
            prepost=1;
            tmp=""}
        else{
            oper()
            operater = 2
            number[0]=result
            tmp = NSString(format:"%g",result) as String;
            display.text=tmp
            number[1]=0
            tmp=""        }
        
    dot=2
    }
    
    @IBAction func btmult(sender: UIButton) {
        decide=0
        a=1
        T=0
        if(number[1]==0){
            operater=3
            prepost=1;
            tmp=""
        }
        else{
            oper()
            operater = 3
            number[0]=result
            tmp = NSString(format:"%g",result) as String;
            display.text=tmp
            number[1]=0
            tmp=""}
        dot=2
    }

    @IBAction func btdiv(sender: UIButton) {
        decide=0
        a=1
        T=0
        if(number[1]==0){
            operater=4
            prepost=1;
            tmp=""
        }
        else{
            oper()
            operater=4
            number[0]=result
            tmp = NSString(format:"%g",result) as String;
            display.text=tmp
            tmp=""
        number[1]=0}
        dot=2
    }
    
    @IBAction func btAC(sender: UIButton) {
        decide=0
        operater=0
        number[0]=0
        result=0
        number[1]=0
        tmp=""
        dot=2
        prepost=0
        display.text="0"
        a=1
        T=0
    }
    
    @IBAction func bttwo(sender: UIButton) {
        if(tmp == ""){a = 0}
        if(decide==0){number[prepost] *= -1
        tmp = NSString(format:"%g",number[prepost]) as String;}
        else{
           number[0] *= -1
            result *= -1
            twicepost *= -1
            tmp = NSString(format:"%g",number[0]) as String;
        }
        display.text=tmp
    
    }

    
    
    @IBAction func btpercent(sender: UIButton) {
        decide=0;
        if(number[1]==0){
            number[0]=number[0]*0.01
            tmp = NSString(format:"%g",number[0]) as String;
            display.text=tmp
        }
        else if(number[1] != 0){
            if(operater != 0){
                oper()
                result *= 0.01
                number[0]=result
                tmp = NSString(format:"%g",result) as String;
                display.text=tmp
                number[1]=0
                tmp=""
            }
            
            
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
   
    @IBOutlet weak var display: UILabel!
    

}



