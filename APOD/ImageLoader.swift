//
//  ImageLoader.swift
//  APOD
//
//  Created by victor tique on 25/09/21.
//

import SwiftUI
import Combine

class ImageLoader: ObservableObject {
    @Published var downloadedImage: UIImage? = nil
}

extension ImageLoader {
    func load(_ urlString: String) {
        guard let url = URL(string: urlString) else {
            fatalError("No se reconce la URL de la imagen")
        }
        
        Constant.session.dataTask(with: url, completionHandler: imageDataHandelr).resume()
    }
    
    func imageDataHandelr(data: Data?, res: URLResponse?, error: Error?){
        guard let data = data, error == nil else {
            fatalError("No se pueden obtener los datos de la imagen")
        }
        DispatchQueue.main.async {
            self.downloadedImage = UIImage(data: data)
        }
    }
}
