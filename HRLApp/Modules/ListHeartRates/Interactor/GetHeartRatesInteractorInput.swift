//
//  GetHeartRatesInteractorInput.swift
//  HRLApp
//
//  Created by Enrique de la Torre on 03/02/2017.
//  Copyright © 2017 Enrique de la Torre. All rights reserved.
//

import Foundation

protocol GetHeartRatesInteractorInput {
    func execute(withWorkoutIndex workoutIndex: Int, dateIndex: Int)
}
