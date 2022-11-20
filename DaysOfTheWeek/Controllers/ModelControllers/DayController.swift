//
//  dayController.swift
//  DaysOfTheWeek
//
//  Created by Stef Castillo on 11/20/22.
//

import Foundation

class DayController {
    
    /**
            Array of Day objects
     
     daysOfTheWeek is a computed proopety -- runs code to calculate a value
     Inside the scope, we are initalizing seven Day Objects and treturning them in an array
     
     static fro global access
     */
    
    //Source of Truth (where the source of our data comes through)
   static var daysOfTheWeek: [Day] {
        let sunday = Day(name: "Sunday", origin: "Added to the Roman calendar by Emperor Constantine.")
        
        
        let monday = Day(name: "Monday", origin: "Added to the Roman calendar by Emperor Constantine")
        
        let tuesday = Day(name: "Tuesday", origin: "Tuesday comes from Tiu, or Tiw, the Anglo-Saxon name Tyr, the norse god of war")
        
        let wednesday = Day(name: "Wednesday", origin: "Odin, also known as Woden, the supreme diery whom Wednesday was named.")
        
        let thursday = Day(name: "Thursday", origin: "Originates from Thor, the Norse god of Thunder")
        
        let friday = Day(name: "Friday", origin: "Derived from Frigga, the wife of Oden, representing lvoe and beauty.")
        
        let saturday = Day(name: "Saturday", origin: "Saturn, the Roman god of fun and feasting.")
        
        return [sunday,monday,tuesday,wednesday,thursday,friday,saturday]
    }
}//End of class
