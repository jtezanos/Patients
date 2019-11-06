//
//  Patient.swift
//  Patients
//
//  Created by Jason Tezanos on 11/6/19.
//  Copyright © 2019 Test. All rights reserved.
//

import Foundation

enum PatientStatus: String, Codable {
    case archived, brand_new, in_treatment
}

struct Patient {
    var firstName: String?
    var lastName: String?
    var status: PatientStatus
    var image: String?
}
