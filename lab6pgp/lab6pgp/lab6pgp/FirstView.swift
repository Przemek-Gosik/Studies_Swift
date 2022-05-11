//
//  ContentView.swift
//  lab6pgp
//
//  Created by student on 30/03/2022.
//  Copyright © 2022 PL. All rights reserved.
//

import SwiftUI

struct KoloView : View{
    var kolor: Color
    var liczba: Int
    var body: some View{
    ZStack{
    Circle()
    .frame(width: 200, height: 200)
    .foregroundColor(kolor)
    Text("\(liczba)")
        .foregroundColor(.black)
        .font(.system(size:50,weight:.bold))
    }
    }
}
struct RecView : View{
    var kolor: Color
    var liczba: Int
    var body: some View{
    ZStack{
    Rectangle()
    .frame(width: 200, height: 200)
    .foregroundColor(kolor)
    Text("\(liczba)")
        .foregroundColor(.black)
        .font(.system(size:50,weight:.bold))
    }
    }
}
struct TriaView : View{
    var kolor: Color
    var liczba: Int
    var body: some View{
    ZStack{
        RoundedRectangle(cornerRadius: 25)
    .frame(width: 200, height: 200)
    .foregroundColor(kolor)
    Text("\(liczba)")
        .foregroundColor(.black)
        .font(.system(size:50,weight:.bold))
    }
    }
}
struct FirstView_Previews: PreviewProvider {
    static var previews: some View {
    FirstView()
    }
}
struct FirstView: View{
    var body: some View{
        NavigationView{
            VStack{
            KoloView(kolor:.yellow, liczba: 1)
                
                NavigationLink(
                    destination: SecondView(), label:{
                        Text("Natepny ekran")
                            .frame(width: 200, height: 40)
                            .background(Color.yellow)
                })
            }
        }
    }
}

struct SecondView: View{
    var body: some View{
            VStack{
                RecView(kolor:.yellow,liczba:2)
                NavigationLink(
                    destination: ThirdView(), label:{
                        Text("Natepny ekran")
                            .frame(width: 200, height: 40)
                            .background(Color.green)
                })
            }
        }
}
struct ThirdView: View{
    var body: some View{
        NavigationView{
            VStack{
                TriaView(kolor:.blue,liczba:3)
                
            }
        }
    }
}
