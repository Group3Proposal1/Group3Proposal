//
//  ProjectViewController.swift
//  Group3Proposal2
//
//  Created by Faesy, Bradley C. on 4/7/26.
//

import UIKit

class ProjectViewController: UIViewController {
	@IBOutlet weak var titleLabel: UILabel!
	@IBOutlet weak var descriptionLabel: UILabel!
	var project: (String, String)?
	
	override func viewDidLoad() {
		super.viewDidLoad()
		if let project = project {
			titleLabel.text = project.0
			descriptionLabel.text = project.1
		}
	}
}
