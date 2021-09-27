//
//  ViewModel.swift
//  APOD
//
//  Created by victor tique on 25/09/21.
//

import SwiftUI
import Combine

class ViewModel: ObservableObject{
    @Published var apod: [APOD] = []
    init(){
        self.fetch()
    }
}

extension ViewModel{
    func fetch(){
        API.getImageOfTheDay{ apod in
            self.apod = apod
        }
    }
}
