//
//  AlarmViewModel.swift
//  
//
//  Created by Erik Gadireddi on 18.03.2022.
//

import SwiftUI
class AlarmViewModel: ObservableObject {
    /// Settings of alarm
    @Published var alarmIsOn: Bool {
        didSet {
            if alarmIsOn {
            siren = .on
            } else {
                siren = .off
            }
        }
    }
    /// Siren state
    @Published var siren: Siren
    init() {
        alarmIsOn = false
        siren = .off
    }
    
    func triggerAlarm() {
        if alarmIsOn {
            siren = .alarm
        }
    }
    enum Siren {
        case on
        case off
        case alarm
    }
}
