//
//  MemberViewController.swift
//  Group3Proposal2
//
//  Created by Faesy, Bradley C. on 4/7/26.
//

import UIKit

class MemberViewController: UIViewController {
	@IBOutlet weak var nameLabel: UILabel!
	@IBOutlet weak var roleLabel: UILabel!
	@IBOutlet weak var notesLabel: UILabel!
	var members: (String, String)?
	
	override func viewDidLoad() {
		super.viewDidLoad()
		if let member = members {
			nameLabel.text = member.0
			nameLabel.text = member.1
		}
	}
}
