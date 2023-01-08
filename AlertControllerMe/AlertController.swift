//
//  AlertController.swift
//  AlertControllerMe
//
//  Created by Susan on 2023/01/08.
//

import UIKit

class AlertController {
	var delay: Double
	var title: String
	var message: String
	var okayTitle: String
	
	init(delay: Double, title: String, message: String, okayTitle: String) {
		self.delay = delay
		self.title = title
		self.message = message
		self.okayTitle = okayTitle
	}
	
	func makeAlert(viewController: UIViewController) {
		DispatchQueue.main.asyncAfter(deadline: .now() + delay) {
			let alert = UIAlertController(title: self.title, message: self.message, preferredStyle: UIAlertController.Style.alert)
			alert.addAction(UIAlertAction(title: self.okayTitle, style: UIAlertAction.Style.default, handler: nil))
			viewController.present(alert, animated: true, completion: nil)
		}
	}
}
