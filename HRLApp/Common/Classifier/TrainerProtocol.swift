//
//  TrainerProtocol.swift
//  HRLApp
//
//  Created by Enrique de la Torre (dev) on 07/02/2017.
//  Copyright © 2017 Enrique de la Torre. All rights reserved.
//

import Foundation

protocol TrainerProtocol {
    func fit(record: HeartRateRecord, workingOut: Bool)
}