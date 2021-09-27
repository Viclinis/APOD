//
//  SwiftUIView.swift
//  APOD
//
//  Created by victor tique on 26/09/21.
//

import SwiftUI

struct SwiftUIView: View {
    
    var apod: APOD
    
    var body: some View {
        Text(apod.title).font(.title).frame(alignment: .center)
        Text(apod.date).font(.title3).frame(alignment: .center)
        ImageView(apod.url).padding().cornerRadius(25)
        ScrollView{
            VStack{
                Text(apod.explanation).font(.body).frame(alignment: .leading)
            }.padding()
        }
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView(apod: APOD(title: "", explanation: "", date: "", url: ""))
    }
}

