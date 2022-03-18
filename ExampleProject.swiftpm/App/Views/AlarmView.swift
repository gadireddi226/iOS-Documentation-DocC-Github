//
//  AlarmView.swift
//  
//
//  Created by Erik Gadireddi on 18.03.2022.
//

import SwiftUI

struct AlarmView: View {
    /// view model represents state of application
    @ObservedObject var vm: AlarmViewModel
    // MARK: Body
    var body: some View {
        List {
            toggleView
            alarmIndicatorView
            sensorView
        }.navigationTitle("Example app")
    }
}

extension AlarmView {
    // MARK: UI Components
    /// UI for setting the alarm on or off
    var toggleView: some View {
        Toggle(isOn: $vm.alarmIsOn) {
            Text("Alarm switch")
        }
    }
    /// Represents the state of alarm (Alarm is on, Alarm is off, Alarm is triggered)
    var alarmIndicatorView: some View {
        Section(header: Text("Alarm Indicator")) {
            HStack {
                Spacer()
                sirenView.resizable()
                    .aspectRatio(contentMode: .fit)
                    .foregroundColor(vm.siren == .alarm ? .red : .green)
                    .frame(width: 80, height: 80)
                
                Spacer()
            }
        }
    }
    /// Touch sensor that triggers the alarm, if alarm is active
    var sensorView: some View {
        Section(header: Text("Sensor")) {
            Button(action: vm.triggerAlarm, label: {
                Image(systemName: "sensor.tag.radiowaves.forward.fill")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .foregroundColor(.black)
                    .frame(width: 50, height: 50)
            })
        }
    }
    private var sirenView: Image {
        switch vm.siren {
        case .off:
            return .alarmOff
        case .on:
            return .alarmOn
        case .alarm:
            return .siren
        }
    }
}

struct AlarmViewView_Previews: PreviewProvider {
    static var previews: some View {
        AlarmView(vm: AlarmViewModel())
    }
}
