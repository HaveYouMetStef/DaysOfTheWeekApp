//
//  DayListTableViewController.swift
//  DaysOfTheWeek
//
//  Created by Stef Castillo on 11/20/22.
//

import UIKit

class DayListTableViewController: UITableViewController {

    
    //MARK: - Lifecycles
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        ///We get the count of the *daysOfTheWeek* arry on the DayController, and return that value as a number of rows we want.
        return DayController.daysOfTheWeek.count
    }

   
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        ///The identifier given here must match the reuse identified on the storyboard
        let cell = tableView.dequeueReusableCell(withIdentifier: "dayCell", for: indexPath)

        ///grab the day object from the *daysOfTheWeek* array. we use the index of the current considered  cell and get the object at the corresponding index of the SOT.
        let day = DayController.daysOfTheWeek[indexPath.row]
        
        ///Grab the name property fo the day object and assign it to the text property of the textLabel of the cell.
        cell.textLabel?.text = day.name
        
        return cell
    }
    


   
    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //IIDOO
        //Identifier, IndexPath,Destination,Object to send, object to receive
        
        ///Identifier - Make sure we are on the right segue
        if segue.identifier == "toDetailVC" {
          
            //IndexPath -- get the indexPath of the selected cell
            //Destination -- give th segue a blueprint for how to interpret the data at the destination
            guard let indexPath = tableView.indexPathForSelectedRow,
                  let destination = segue.destination as? DayDetailViewController else { return }
            
            //Object to send -- the object we are sending from the SOT that corresponds to the selected indexPath
            let dayToSend = DayController.daysOfTheWeek[indexPath.row]
            
            //Object to receive -- tell the data where to land
            destination.day = dayToSend
        }
    }

} //End of class
