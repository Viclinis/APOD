//
//  Constant.swift
//  APOD
//
//  Created by victor tique on 25/09/21.
//

import Foundation

class Constant {
    static var apikey: String {
        return "sw9CYhEUVIzqnis464Ey7PfEqDO3CgTVXZhy9m1V"
    }
    static var baseUrlString: String {
        return "https://api.nasa.gov/planetary/apod?"
    }
    
    static var url: URL{
        guard let url = URL(string:
                                "\(baseUrlString)api_key=\(apikey)&start_date=2021-09-20") else{
            fatalError()
        }
        return url
    }
    
    static var session: URLSession {
        let session = URLSession(configuration: .default)
        return session
    }
    
    static var request: URLRequest{
        let req = URLRequest(url: url)
        return req
    }
    
    static var decoder: JSONDecoder {
        let decoder = JSONDecoder()
        decoder.keyDecodingStrategy = .convertFromSnakeCase
        return decoder
    }
}
