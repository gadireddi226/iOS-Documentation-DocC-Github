//
//  SwiftUIView.swift
//  
//
//  Created by Erik Gadireddi on 18.03.2022.
//

import SwiftUI

struct MainView: View {
    @StateObject var vm: AlarmViewModel = AlarmViewModel()
    var body: some View {
        NavigationView {
            AlarmView(vm: AlarmViewModel())
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
