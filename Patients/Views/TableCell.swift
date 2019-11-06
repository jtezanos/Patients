//
//  TableCell.swift
//  Patients
//
//  Created by Jason Tezanos on 11/6/19.
//  Copyright © 2019 Test. All rights reserved.
//

import UIKit

class TableCell: UITableViewCell {
    
    @IBOutlet weak var firstNameLabel: UILabel!
    @IBOutlet weak var lastNameLabel: UILabel!
    @IBOutlet weak var statusLabel: UILabel!
    
    func setup(with patient: [String: String]) {
        firstNameLabel.text = patient["first"]
        lastNameLabel.text = patient["last"]
        statusLabel.text = patient["status"]
    }
    
}
