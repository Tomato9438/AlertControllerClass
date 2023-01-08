//
//  ViewController.swift
//  AlertControllerMe
//
//  Created by Susan on 2023/01/08.
//

import UIKit

class ViewController: UIViewController {
	// MARK: - Variables
	
	
	// MARK: - IBOutlet
	
	
	// MARK: - IBAction
	@IBAction func alertMeTapped(_ sender: UIButton) {
		/*
		let delay: Double = 5.0
		let spinner = UIActivityIndicatorView()
		spinner.frame = CGRect(origin: CGPoint(x: (view.frame.width - 20.0) / 2.0, y: (view.frame.height - 20.0) / 2.0), size: CGSize(width: 20.0, height: 20.0))
		spinner.color = .black
		spinner.startAnimating()
		view.addSubview(spinner)
		let alertMe = AlertController(delay: delay, title: "Test", message: "Hello", okayTitle: "Okay, man!")
		alertMe.makeAlert(viewController: self)
		DispatchQueue.main.asyncAfter(deadline: .now() + delay) {
			spinner.removeFromSuperview()
		}
		*/
		
		/*
		let alertMe = AlertController(delay: 0.0, title: "Test", message: "Hello", okayTitle: "Okay, man!", canTitle: "Cancel me!")
		alertMe.makeAlertWithCancel(viewController: self)
		*/
		
		let alertMe = AlertController(delay: 0.0, title: "Test", message: "Hello", okayTitle: "Okay") {
			print("Okay")
		} rejected: {
			print("Cancelled")
		}
		alertMe.makeAlertConfirmation(viewController: self)
	}
	
	
	// MARK: - Life cyle
	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view.
	}
	
	override func viewWillAppear(_ animated: Bool) {
		super.viewWillAppear(animated)
	}
	
	override func viewDidAppear(_ animated: Bool) {
		super.viewDidAppear(animated)
	}
	
	override func viewDidDisappear(_ animated: Bool) {
		super.viewDidDisappear(animated)
	}
	
	override func viewWillDisappear(_ animated: Bool) {
		super.viewWillDisappear(animated)
	}
}

