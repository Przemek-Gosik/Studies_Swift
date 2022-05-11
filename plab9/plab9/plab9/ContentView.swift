//
//  ContentView.swift
//  plab9
//
//  Created by student on 11/05/2022.
//  Copyright © 2022 PL. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var index: Int = 0
    @State var description: String = ""
    @State var images:[(image:String,title:String)]=[
        (image:"image1",title:"ImageOne"),
        (image:"image2",title:"ImageOne"),
        (image:"image3",title:"ImageOne"),
        (image:"image4",title:"ImageOne")
    ]
    @State var offset: CGSize = .zero
    @GestureState var isTapped = false
    var body: some View {
        VStack{
            
            Image(images[self.index].image).resizable().scaledToFit()
                .onTapGesture{
                    self.description = ""
                    if self.index < self.images.count - 1 {
                        self.index = self.index + 1
                    }
                    else{
                        self.index = 0
                    }
            }
            Text(description)
    }
    .simultaneousGesture(LongPressGesture()
    .onEnded{_ in
        self.description=self.images[self.index].title})
    }
 
            

    }

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
