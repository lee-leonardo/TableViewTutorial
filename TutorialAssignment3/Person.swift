//
//  Person.swift
//  TutorialAssignment3
//
//  Created by Leonardo Lee on 8/16/14.
//  Copyright (c) 2014 Leonardo Lee. All rights reserved.
//

import UIKit

class Person {
	var firstName : String
	var lastName : String
	var personImage : UIImage?
	
	init( firstName fName: String, lastName lName: String ){
		self.firstName = fName
		self.lastName = lName
	}
	
	func fullName() -> String {
		return self.firstName + " " + self.lastName
	}
	
}