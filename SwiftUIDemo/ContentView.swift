//
//  ContentView.swift
//  SwiftUIDemo
//
//  Created by Ashish Bahl on 23/03/20.
//  Copyright © 2020 Ashish Bahl. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(red: 0.61, green: 0.35, blue: 0.71, opacity: 1.0).edgesIgnoringSafeArea(.all)
            VStack {
                Image("Radhikashish")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 200, height: 200, alignment: .center)
                    .clipShape(Rectangle())
                    .overlay(
                        Rectangle().stroke(Color.white, lineWidth: 5)
                )
                Text("Ashish Bahl")
                    .foregroundColor(.white)
                    .font(Font.custom("Pacifico-Regular", size: 42))
                    .bold()
                Text("iOS Developer")
                    .foregroundColor(.white)
                    .font(.system(size: 25))
                Divider()
                InfoView(imageName: "phone.fill", text: "9920091828")
                InfoView(imageName: "envelope.fill", text: "ashishbahl@mail.com")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
//H Stack goes from left to righy
//V stack goes from top to vottom

