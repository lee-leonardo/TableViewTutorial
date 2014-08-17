//
//  DetailViewController.swift
//  TutorialAssignment3
//
//  Created by Leonardo Lee on 8/16/14.
//  Copyright (c) 2014 Leonardo Lee. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
	
	@IBOutlet weak var nameTextField: UITextField!
	
	@IBOutlet weak var lastNameTextField: UITextField!
	
	var person : Person!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
	override func viewWillAppear(animated: Bool) {
		self.nameTextField.text = self.person.firstName
		self.lastNameTextField.text = self.person.lastName
	}

	override func viewWillDisappear(animated: Bool) {
		self.person.firstName = self.nameTextField.text
		self.person.lastName = self.lastNameTextField.text
	}
	
	
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue!, sender: AnyObject!) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
