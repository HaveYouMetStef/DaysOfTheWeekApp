//
//  DayDetailViewController.swift
//  DaysOfTheWeek
//
//  Created by Stef Castillo on 11/20/22.
//

import UIKit

class DayDetailViewController: UIViewController {

    //MARK: - Outlets
    
    @IBOutlet weak var dayNameLabel: UILabel!
    @IBOutlet weak var dayOriginLabel: UILabel!
    
    //MARK: - Properties
    
    /**
        Optional Day object -- landing pad
     'day' is a stored property.. this Day object will receive a value if and only if the 'prepare ForSegue' method on our tableViewController is successful
     */
    var day: Day?
    
    //MARK: - Lifecycles
    override func viewDidLoad() {
        super.viewDidLoad()
        /// when the view is loaded into memory, run this function
        updateViews()

    }
    
    //MARK: - HelperMethods
    func updateViews() {
        ///Check to make sure *day* has a value. Create a new constant *day* that holds the non-optional value
        guard let day = day else { return }
        //Set the text properties of our labels using the properties of the day object
        dayNameLabel.text = day.name
        dayOriginLabel.text = day.origin
    }

} //End of class
