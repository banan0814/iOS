//
//  ViewController.swift
//  Alphabet Clock
//
//  Created by Balázs Víg on 2017. 03. 17..
//  Copyright © 2017. Balázs Víg. All rights reserved.
//

import UIKit

protocol Clockhelper {
}


class Alarm: UIView {
    
}


class ViewController: UIViewController {

/*
    @IBOutlet var half: [UILabel]!
    
    @IBOutlet var tenminutes: [UILabel]!
    
    @IBOutlet var quarter: [UILabel]!
    
    @IBOutlet var twenty: [UILabel]!
    
    @IBOutlet var five: [UILabel]!
    
    @IBOutlet var minutes: [UILabel]!
    
    @IBOutlet var to: [UILabel]!
    
    @IBOutlet var past: [UILabel]!
    
    @IBOutlet var one: [UILabel]!
    
    @IBOutlet var two: [UILabel]!
    
    @IBOutlet var three: [UILabel]!
    
    @IBOutlet var four: [UILabel]!
    
    @IBOutlet var fivehour: [UILabel]!
    
    @IBOutlet var six: [UILabel]!
    
    @IBOutlet var seven: [UILabel]!
    
    @IBOutlet var eight: [UILabel]!
    
    @IBOutlet var nine: [UILabel]!
    
    @IBOutlet var ten: [UILabel]!
    
    @IBOutlet var eleven: [UILabel]!
    
    @IBOutlet var twelve: [UILabel]!
    
    @IBOutlet var oclock: [UILabel]!
 */
    
    @IBOutlet weak var eight: UILabel!
    
    @IBOutlet weak var seven: UILabel!
    
    @IBOutlet weak var six: UILabel!
    
    @IBOutlet weak var five: UILabel!
    
    @IBOutlet weak var four: UILabel!
    
    @IBOutlet weak var two: UILabel!
    
    @IBOutlet weak var past: UILabel!
    
    @IBOutlet weak var one: UILabel!
    
    @IBOutlet weak var three: UILabel!
    
    @IBOutlet weak var to: UILabel!
    
    @IBOutlet weak var minutes: UILabel!
    
    @IBOutlet weak var twenty: UILabel!
    
    @IBOutlet weak var fiveminutes: UILabel!
    
    @IBOutlet weak var quarter: UILabel!
    
    @IBOutlet weak var eleven: UILabel!
    
    @IBOutlet weak var tenhour: UILabel!
    
    @IBOutlet weak var nine: UILabel!
    
    @IBOutlet weak var twelve: UILabel!
    
    @IBOutlet weak var oclock: UILabel!
    
    @IBOutlet weak var tenmin: UILabel!
    
    @IBOutlet weak var half: UILabel!
    
    @IBOutlet weak var Datelbl: UILabel!
    
    @IBOutlet var Labels: [UILabel]!
    
  
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.updateTime), userInfo: nil, repeats: true)
        
        

    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        updateTime()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func updateTime() {
        
        let date = Date()
        let calendar = Calendar.current
        
        var hour = calendar.component(.hour, from: date)
        let min = calendar.component(.minute, from: date)
        
        // boolal megcsinálni a fort hogy ne mindig menjen végig mert memória pazarlás
        // kiküszöbölni ezt a rengeteg ifet a picsába mert ez borzalmas
        
        
      //  let minLabel = self.view.viewWithTag(min) as! (UILabel)
       // let hourLabel = self.view.viewWithTag(hour) as! (UILabel)
       
       // minLabel.textColor = UIColor.blue
       // hourLabel.textColor = UIColor.blue
        
        Datelbl.text = DateFormatter.localizedString(from: Date(), dateStyle: DateFormatter.Style.none, timeStyle: DateFormatter.Style.medium)
        Datelbl.textColor = UIColor.white
        
        
        for i in Labels{
            i.textColor = UIColor.black
        }
        
        
        //hourfix
        if min > 30 {
            hour = hour+1
        }else
        {
            hour = calendar.component(.hour, from: date)
        }
        //hours
        
        
        if hour == 0 || hour == 12 || hour == 24{
            twelve.textColor = UIColor.white
        }
        else if hour == 1 || hour == 13 {
            one.textColor = UIColor.white
        }
        else if hour == 2 || hour == 14{
            two.textColor = UIColor.white

        }  else if hour == 3 || hour == 15{
            three.textColor = UIColor.white
            
        }  else if hour == 4 || hour == 16{
            four.textColor = UIColor.white
            
        }  else if hour == 5 || hour == 17{
            five.textColor = UIColor.white
            
        }  else if hour == 6 || hour == 18{
            six.textColor = UIColor.white
            
        }  else if hour == 7 || hour == 19{
            seven.textColor = UIColor.white
            
        }  else if hour == 8 || hour == 20{
            eight.textColor = UIColor.white
            
        }  else if hour == 9 || hour == 21{
            nine.textColor = UIColor.white
            
        }  else if hour == 10 || hour == 22{
            tenhour.textColor = UIColor.white
            
        }  else if hour == 11 || hour == 23{
            eleven.textColor = UIColor.white
            
        }
        
        
        
        //mins
        
        if min >= 0 && min < 5{
            oclock.textColor = UIColor.white
            
        }  else if min >= 5 && min < 10{
            
            fiveminutes.textColor = UIColor.white
            
        } else if min >= 10 && min < 15{
            
            tenmin.textColor = UIColor.white
            
        }else if min >= 15 && min < 20{

            quarter.textColor = UIColor.white
            
        }else if min >= 20 && min < 25{
            
            twenty.textColor = UIColor.white
            
        }else if min >= 25 && min < 30{
            
            twenty.textColor = UIColor.white
            fiveminutes.textColor = UIColor.white
            
        }else if min >= 30 && min < 35{

            half.textColor = UIColor.white
            
        }else if min >= 35 && min < 40{

            twenty.textColor = UIColor.white
            fiveminutes.textColor = UIColor.white
            
        }else if min >= 40 && min < 45{
         
            twenty.textColor = UIColor.white
        }
        else if min >= 45 && min < 50{
            quarter.textColor = UIColor.white
            
        }else if min >= 50 && min < 55{
            tenmin.textColor = UIColor.white
            
        }else if min >= 55 && min < 60{
            
            fiveminutes.textColor = UIColor.white

        }
        //prefix
        
        if (min >= 5 && min <= 30) {
            
            past.textColor = UIColor.white
            
        }else if min >= 30 && !(min >= 45 && min < 50){
            
            minutes.textColor = UIColor.white
            to.textColor = UIColor.white
            
        }else if min >= 45 && min < 50 {
            
            to.textColor = UIColor.white
        }
        
    }
    
    
    
}

