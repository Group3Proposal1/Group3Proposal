//
//  ViewController.swift
//  Group3Proposal2
//
//  Created by Faesy, Bradley C. on 4/7/26.
//

import UIKit

class ViewController: UIViewController {
	let members = [("Cooper Faesy", "Main code developer and bug fixes", "Handles most of the main code and logic for app"), ("Noah Kellinghaus", "Main UI designer and bug fixes", "Handles most of the UI design and layout for the app"), ("Ryne Webster", "Code developer, UI designer, and bug fixes", "Backup code and UI designer to fix mistakes or check the code and UI for additional additons")]
	let projectDescription = [("Frontend", "Clean UI and buttons for each dice type. ex.d4, d6, d8, d10, d12, d20"), ("Backend", "Random number gen for each die"), ("UI design", "Simple design to fit DND style")]
	let preview = ["Project Image"]
	
	override func viewDidLoad() {
		super.viewDidLoad()
	}
}

extension ViewController: UITableViewDataSource {
	func numberOfSections(in tableView: UITableView) -> Int {
		return 3
	}
    
    func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int) {
        if let header = view as? UITableViewHeaderFooterView {
            header.textLabel?.textColor = .white
        }
    }
    
    func tableView(_ tableView: UITableView, willDisplayFooterView view: UIView, forSection section: Int) {
        if let header = view as? UITableViewHeaderFooterView {
            header.textLabel?.textColor = .white
        }
    }
    
	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		print("#1.",#function)
		switch section {
		case 0:
			return members.count
		case 1:
			return projectDescription.count
		case 2:
			return preview.count
		default:
			return 0
		}
	}
	//This method is called repeatedly
	func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		print("#1.", #function, indexPath)

		let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
		switch indexPath.section {
		case 0:
			let member = members[indexPath.row]
			cell.textLabel?.text = member.0
			cell.detailTextLabel?.text = member.1
		case 1:
			let project = projectDescription[indexPath.row]
			cell.textLabel?.text = project.0
			cell.detailTextLabel?.text = project.1
		case 2:
			cell.textLabel?.text = preview[indexPath.row]
		default:
			break
		}
		
		return cell
	}
	
	func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
		switch section {
		case 0:
			return "Members"
		case 1:
			return "Project"
		case 2:
			return "Image preview"
		default:
			return nil
		}
	}
	
	func tableView(_ tableView: UITableView, titleForFooterInSection section: Int) -> String? {
        if let header = view as? UITableViewHeaderFooterView {
            header.textLabel?.textColor = .white
        }
		switch section {
		case 0:
			return "\(members.count) members"
		case 1:
			return "Project Description"
		case 2:
			return "Tap to view full image"
		default:
			return nil
		}
	}
}

extension ViewController: UITableViewDelegate {
	func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
		switch indexPath.section {
		case 0:
			performSegue(withIdentifier: "toMember", sender: indexPath)
		case 1:
			performSegue(withIdentifier: "toProject", sender: indexPath)
		case 2:
			performSegue(withIdentifier: "toImage", sender: indexPath)
		default:
			break
		}
	}
}

extension ViewController {
	override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
		let indexPath = sender as! IndexPath
		
		if segue.identifier == "toMember" {
			let vc = segue.destination as! MemberViewController
			vc.members = members[indexPath.row]
		} else if segue.identifier == "toProject" {
			let vc = segue.destination as! ProjectViewController
			vc.project = projectDescription[indexPath.row]
		} else if segue.identifier == "toImage" {
			let vc = segue.destination as! ImageViewController
		}
	}
}
