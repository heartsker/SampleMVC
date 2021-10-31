//
//  ViewController.swift
//  SampleMVC
//
//  Created by Daniel Pustotin on 31.10.2021.
//

import UIKit

class ViewController: UIViewController {

	var model = Model()

	@IBAction func generateButton(_ sender: UIButton) {
		model.changeText()
		updateLabel()
	}

	@IBAction func plusButton(_ sender: UIButton) {
		model.increaseLength()
		updateLabel()
	}

	@IBAction func minusButton(_ sender: UIButton) {
		model.decreaseLength()
		updateLabel()
	}

	@IBOutlet weak var label: UILabel!

	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view.

		model.changeText()
		updateLabel()

	}

	func updateLabel() {
		label.text = model.text
	}

}

