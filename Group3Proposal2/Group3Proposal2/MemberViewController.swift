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
	var members: (String, String, String)?
	
	override func viewDidLoad() {
		super.viewDidLoad()
        
        nameLabel.layer.cornerRadius = 10
        nameLabel.layer.masksToBounds = true
        
        roleLabel.layer.cornerRadius = 10
        roleLabel.layer.masksToBounds = true
        
        notesLabel.layer.cornerRadius = 10
        notesLabel.layer.masksToBounds = true
        
		if let member = members {
			nameLabel.text = member.0
			roleLabel.text = member.1
            notesLabel.text = member.2
		}
	}
}
