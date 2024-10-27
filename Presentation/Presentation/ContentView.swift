//
//  ContentView.swift
//  Presentation
//
//  Created by Santi Gómez on 26/10/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        ZStack {
            Color(.systemCyan)
                .ignoresSafeArea()
            
            VStack(alignment: .leading, spacing: 20.0) {
                Image("santiago")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .cornerRadius(50)
                    .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                
                HStack {
                    Text("Santiago Gómez de la Torre")
                        .font(.title)
                        .fontWeight(.bold)

                    Spacer()

                    VStack{
                        HStack{
                            Image(systemName: "star.fill")
                            Image(systemName: "star.fill")
                            Image(systemName: "star.fill")
                            Image(systemName: "star.fill")
                            Image(systemName: "star.leadinghalf.filled")
                        }
                        Text("Reviews: 658")
                    }
                    .foregroundColor(.yellow)
                    .font(.footnote)
                    .shadow(radius: 50)
                    
                }
                .padding(.all)
                
                Text("Hey there, I'm starting my road to SwiftUI. Hope you enjoy with me.")
                    .padding(.horizontal)
                
                HStack {
                    Spacer()
                    Image(systemName: "fork.knife")
                    Image(systemName: "binoculars.fill")
                }
                .foregroundColor(.black)
                .font(.footnote)
            }
            .padding()
            .background(Rectangle()
                .foregroundColor(.blue)
                .cornerRadius(30)
                .shadow(radius: 25)
            )
            .padding()
        }
        
        
    }
}
#Preview {
    ContentView()
}
