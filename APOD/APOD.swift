//
//  APOD.swift
//  APOD
//
//  Created by victor tique on 25/09/21.
//

import Foundation

struct APOD: Identifiable, Codable{
    let id = UUID()
    let title: String
    let explanation: String
    let date: String
    let url: String
}


