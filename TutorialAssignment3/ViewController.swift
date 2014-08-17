//
//  ViewController.swift
//  TutorialAssignment3
//
//  Created by Leonardo Lee on 8/16/14.
//  Copyright (c) 2014 Leonardo Lee. All rights reserved.
//

import UIKit
//Obj-C Import
//#import "Person.h"

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

	@IBOutlet weak var tableView: UITableView!
	
	var personArray = [Person]()
	
	//Object-C Array.
	//(NSMutableArray *) *personArray = [[NSMutableArray alloc] init]
	

	override func viewDidLoad() {
		super.viewDidLoad()
		initializeArray()
		
	}
	
	override func viewDidAppear(animated: Bool) {
		super.viewDidAppear(animated)
		
		//tableView delegates/datasource
	}
	
	override func viewWillAppear(animated: Bool) {
		super.viewWillAppear(animated)
		
		self.tableView.reloadData()
	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}
	
//MARK: Functions
	func initializeArray() {
		self.personArray.append(Person(firstName: "Leonardo", lastName: "Lee"))
		self.personArray.append(Person(firstName: "Brian", lastName: "Mendez"))
		self.personArray.append(Person(firstName: "Tuon", lastName: "Vu?"))
	}
	
//MARK: Segue
	override func prepareForSegue(segue: UIStoryboardSegue!, sender: AnyObject!) {
		
		let indexPath = self.tableView.indexPathForSelectedRow()
		
		if segue.identifier == "PersonDetails" {
			
			let destination = segue.destinationViewController as DetailViewController
			destination.person = personArray[indexPath.row]
			
			self.tableView.deselectRowAtIndexPath(indexPath, animated: false)
		}
	}

//MARK: Delegate
//MARK: UITableViewDataSource
	func tableView(tableView: UITableView!, cellForRowAtIndexPath indexPath: NSIndexPath!) -> UITableViewCell! {
		
		var cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as UITableViewCell
		
//		var personAtIndexPath = personArray[indexPath.row]
//		var personsFullName = personAtIndexPath.fullName()
//		cell.textLabel.text = personsFullName
		
		cell.textLabel.text = personArray[indexPath.row].fullName()
		
		return cell
	}
	
	func tableView(tableView: UITableView!, numberOfRowsInSection section: Int) -> Int {
		return personArray.count
	}
	
//TODO:
	func numberOfSections() -> Int {
		
		return 2
	}


}

