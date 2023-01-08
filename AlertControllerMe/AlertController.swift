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
	var canTitle: String
	var accepted: () -> Void
	var rejected: () -> Void
	
	init(delay: Double, title: String, message: String, okayTitle: String, canTitle: String = "Cancel", accepted: @escaping () -> Void = {}, rejected: @escaping () -> Void = {}) {
		self.delay = delay
		self.title = title
		self.message = message
		self.okayTitle = okayTitle
		self.canTitle = canTitle
		self.accepted = accepted
		self.rejected = rejected
	}
	
	func makeAlert(viewController: UIViewController) {
		DispatchQueue.main.asyncAfter(deadline: .now() + delay) {
			let alert = UIAlertController(title: self.title, message: self.message, preferredStyle: UIAlertController.Style.alert)
			alert.addAction(UIAlertAction(title: self.okayTitle, style: UIAlertAction.Style.default, handler: nil))
			viewController.present(alert, animated: true, completion: nil)
		}
	}
	
	func makeAlertWithCancel(viewController: UIViewController) {
		DispatchQueue.main.asyncAfter(deadline: .now() + delay) {
			let alert = UIAlertController(title: self.title, message: self.message, preferredStyle: UIAlertController.Style.alert)
			// okay button
			let defaultAction: UIAlertAction = UIAlertAction(title: self.okayTitle, style: UIAlertAction.Style.default, handler: {
				(action: UIAlertAction!) -> Void in
				print("OK")
			})
			// cancel button
			let cancelAction: UIAlertAction = UIAlertAction(title: self.canTitle, style: UIAlertAction.Style.cancel, handler: {
				(action: UIAlertAction!) -> Void in
				print("Cancelled")
			})
			alert.addAction(cancelAction)
			alert.addAction(defaultAction)
			viewController.present(alert, animated: true, completion: nil)
		}
	}
	
	func makeAlertConfirmation(viewController: UIViewController) {
		DispatchQueue.main.asyncAfter(deadline: .now() + delay) {
			let alert = UIAlertController(title: self.title, message: self.message, preferredStyle: UIAlertController.Style.alert)
			// okay button
			let defaultAction: UIAlertAction = UIAlertAction(title: self.okayTitle, style: UIAlertAction.Style.default, handler: {
				(action: UIAlertAction!) -> Void in self.accepted()
			})
			// cancel button
			let cancelAction: UIAlertAction = UIAlertAction(title: self.canTitle, style: UIAlertAction.Style.cancel, handler: {
				(action: UIAlertAction!) -> Void in self.rejected()
			})
			
			alert.addAction(cancelAction)
			alert.addAction(defaultAction)
			viewController.present(alert, animated: true, completion: nil)
		}
	}
}
