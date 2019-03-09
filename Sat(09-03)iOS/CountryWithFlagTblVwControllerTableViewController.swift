//
//  CountryWithFlagTblVwControllerTableViewController.swift
//  Sat(09-03)iOS
//
//  Created by MacStudent on 2019-03-09.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import UIKit

class CountryWithFlagTblVwControllerTableViewController: UITableViewController {
    var countryList:[Country]!
    override func viewDidLoad() {
        super.viewDidLoad()
        getInitialCountryList()
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    func getInitialCountryList(){
        countryList=[]
        countryList.append(Country(code: "AFG", name: "Afghanistan", flagImgName: "flag-of-Afghanistan"))
        countryList.append(Country(code: "ALB", name: "Albania", flagImgName: "flag-of-Albania"))
        countryList.append(Country(code: "ALG", name: "Algeria", flagImgName: "flag-of-Algeria"))
        countryList.append(Country(code: "AND", name: "Andorra", flagImgName: "flag-of-Andorra"))
        countryList.append(Country(code: "ANG", name: "Angola", flagImgName: "flag-of-Angola"))
        countryList.append(Country(code: "ANT", name: "Antigua", flagImgName: "flag-of-Antigua"))
        countryList.append(Country(code: "ARG", name: "Argentina", flagImgName: "flag-of-Argentina"))
        countryList.append(Country(code: "ARM", name: "Armenia", flagImgName: "flag-of-Armenia"))
        countryList.append(Country(code: "AUS", name: "Australia", flagImgName: "flag-of-Australia"))
        countryList.append(Country(code: "AUT", name: "Austria", flagImgName: "flag-of-Austria"))
        countryList.append(Country(code: "AZE", name: "Azerbaijan", flagImgName: "flag-of-Azerbaijan"))
        countryList.append(Country(code: "BHS", name: "Bahamas", flagImgName: "flag-of-Bahamas"))
        countryList.append(Country(code: "BHR", name: "Bahrain", flagImgName: "flag-of-Bahrain"))
        countryList.append(Country(code: "BGD", name: "Bangladesh", flagImgName: "flag-of-Bangladesh"))
        countryList.append(Country(code: "BRB", name: "Barbados", flagImgName: "flag-of-Barbados"))
        countryList.append(Country(code: "BLR", name: "Belarus", flagImgName: "flag-of-Belarus"))
        countryList.append(Country(code: "BEL", name: "Belgium", flagImgName: "flag-of-Belgium"))
        countryList.append(Country(code: "BLZ", name: "Belize", flagImgName: "flag-of-Belize"))
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return self.countryList.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell=tableView.dequeueReusableCell(withIdentifier: "countryIdentifier", for: indexPath)
        cell.textLabel?.text=self.countryList[indexPath.row].name
        cell.detailTextLabel?.text=self.countryList[indexPath.row].code
        cell.imageView?.image=UIImage(named: self.countryList[indexPath.row].flagImgName)
        return cell
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(self.countryList[indexPath.row].code)
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
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
