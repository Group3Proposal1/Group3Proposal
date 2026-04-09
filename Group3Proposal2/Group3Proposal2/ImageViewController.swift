//
//  ImageViewController.swift
//  Group3Proposal2
//
//  Created by Faesy, Bradley C. on 4/7/26.
//

import UIKit

class ImageViewController: ViewController {
	@IBOutlet weak var imageView: UIImageView!
	
	override func viewDidLoad() {
		super.viewDidLoad()
        
        imageView.layer.cornerRadius = 15
        imageView.layer.masksToBounds = true
        
		imageView.image = UIImage(named: "d20-icon-22")
	}
}
