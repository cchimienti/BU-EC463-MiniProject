//
//  secondViewController.swift
//  SW_Mini_Project_v1
//
//  Created by Hayato Nakamura on 2018/09/14.
//  Copyright © 2018 Hayatopia. All rights reserved.
//

import UIKit
import FirebaseDatabase

var ref: DatabaseReference?
var dataHandle:DatabaseReference?
var changedData = [String]()

class secondViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

	ref = Database.database().reference()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem

	//to add new user to database
  	ref?.child("Users").child("gmail").child(Room1).setValue(["temp": 75])
	ref?.child("Users").child("gmail").child(Room1).setValue(["humidity": 67])

  	//to update
	updated_temp = ["Users/\$gmail/Room1\temp/": new_temperature]
	updated_humidity = ["Users/\$gmail/Room1\humidity/": new_humidity]
	ref.updateChildValues(updated_temp)
	ref.updateChildValues(updated_humidity)

	//to retrieve
	dataHandle = ref?.child("Users").child("gmail").child("Room1").observe(.childChanged, with: { (snapshot) in
  		let current_data = snapshot.value as? String
  
  		if let Correct_data = current_data {
  
  		self.changedData.append(snapshot)
  
  		//reload the table
  		self.tableView.reloadData()
  	}	
  
  }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 0
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 0
    }

    /*
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
    }
    */

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
