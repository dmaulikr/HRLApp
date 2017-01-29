//
//  AddWorkoutAddWorkoutViewController.swift
//  HRLApp
//
//  Created by Enrique de la Torre on 18/01/2017.
//  Copyright © 2017 Enrique de la Torre. All rights reserved.
//

import UIKit

// MARK: - Main body

class AddWorkoutViewController: UIViewController {

    // MARK: - Dependencies

    var output: AddWorkoutViewOutput!

    // MARK: - Outlets

    @IBOutlet weak var datePicker: UIDatePicker!
    @IBOutlet weak var workoutPicker: UIPickerView!

    // MARK: - Life cycle

    override func viewDidLoad() {
        super.viewDidLoad()

        output.viewIsReady()
    }

    // MARK: - Actions
    
    @IBAction func done(_ sender: Any) {
        let index = workoutPicker.selectedRow(inComponent: Constants.numberOfComponents - 1)
        let date = datePicker.date
        
        output.addWorkout(at: index, startingOn: date)
    }
}

// MARK: - UIPickerViewDataSource methods

extension AddWorkoutViewController: UIPickerViewDataSource {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return Constants.numberOfComponents
    }

    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return output.numberOfWorkouts()
    }
}

// MARK: - UIPickerViewDelegate methods

extension AddWorkoutViewController: UIPickerViewDelegate {
    func pickerView(_ pickerView: UIPickerView,
                    titleForRow row: Int,
                    forComponent component: Int) -> String? {
        return output.workout(at: row)
    }
}

// MARK: - AddWorkoutViewInput methods

extension AddWorkoutViewController: AddWorkoutViewInput {
    func setupInitialState() {
        workoutPicker.reloadAllComponents()
    }
}

// MARK: - Private body

private extension AddWorkoutViewController {
    enum Constants {
        static let numberOfComponents = 1
    }
}
