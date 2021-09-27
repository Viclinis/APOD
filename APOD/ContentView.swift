//
//  ContentView.swift
//  APOD
//
//  Created by victor tique on 25/09/21.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var viewModel = ViewModel()
    @State var hero = false
    
    var body: some View {
        VStack{
            NavigationView{
                List{
                    ScrollView(.vertical, showsIndicators: false){
                        VStack{
                            HStack{
                                VStack{
                                    ImagenCircular()
                                        .frame(alignment: .center)
                                    VStack(alignment: .leading){
                                        Text("Victor Hugo Tique Pinto")
                                            .font(.title2)
                                        HStack{
                                            Text("Astronomy Picture of the Day")
                                                .font(.subheadline)
                                            Spacer()
                                            Text("Bogotá")
                                                .font(.subheadline)
                                        }
                                    }
                                }
                            }
                            .padding()
                            Spacer()
                            VStack(spacing: 15){
                                ForEach(viewModel.apod) {apod in
                                    GeometryReader{g in
                                        NavigationLink(destination: SwiftUIView(apod: apod)){
                                            ImageView(apod.url)
                                                .cornerRadius(25)
                                        }
                                    }
                                    .frame(height: 250)
                                }
                            }
                        }
                    }
                    
                }.navigationBarTitle(Text("Astronomy Picture of the Day"),displayMode: .inline)
            }
        }
    }
}
