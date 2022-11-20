//
//  Day.swift
//  DaysOfTheWeek
//
//  Created by Stef Castillo on 11/20/22.
//

import Foundation

class Day {
    
    ///Property of the Day object that will hold a String(the name of the day)
    let name: String
    /// Properthy of the Day object that will hold a String(the origin of the day)
    let origin: String

    /**
        Initializes a Day object
        -- this memberwise initialize will take a string *name* and a string for *origin and will set them to the properties of a Day object *
     */
    init(name: String, origin: String) {
        self.name = name
        self.origin = origin
 
    }
    
} //End of class



