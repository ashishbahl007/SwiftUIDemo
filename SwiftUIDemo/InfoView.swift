//
//  InfoView.swift
//  SwiftUIDemo
//
//  Created by Ashish Bahl on 25/03/20.
//  Copyright © 2020 Ashish Bahl. All rights reserved.
//

import SwiftUI

struct InfoView: View {
    
    let imageName : String
    let text: String
    
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .fill(Color.white)
            .frame(height: 50)
            .overlay(
                HStack {
                    Image(systemName: imageName)
                        .foregroundColor(Color.yellow)
                    Text(text)
                        //                        .foregroundColor(Color.black) not needed if fill is used default clor is black
                        .font(.system(size: 20))
                }
        )
            .padding(.all)
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView(imageName: "phone.fill", text: "Hello")
            .previewLayout(.sizeThatFits)
    }
}
