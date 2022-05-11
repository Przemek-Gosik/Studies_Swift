//
//  ContentView.swift
//  lab4_PG
//
//  Created by student on 23/03/2022.
//  Copyright © 2022 PL. All rights reserved.
//

import SwiftUI

struct ContentView: View {
 
        enum Waluta: String, CaseIterable, Identifiable {
         case zlote="Zlote"
         case euro="Euro"
         case dolary="Dolary"
         var id: String { self.rawValue }
         }
   
        @State var selection: Waluta = .zlote
         @State var selection2: Waluta = .zlote
    @State var wynik: String = ""
    @State var kwota : String = ""
         var body: some View {
         VStack {
         Picker(selection: $selection,
         label: Text("Wybierz walute ktora chcesz kupic"),
        content: {
         ForEach(Waluta.allCases) { option in
         Text(option.rawValue.capitalized).tag(option)
            
         }
         })
         .padding()
         Picker(selection: $selection2,
          label: Text("Wybierz walute ktora chcesz zaplacic"),
         content: {
          ForEach(Waluta.allCases) { option in
          Text(option.rawValue.capitalized).tag(option)
          }
          })
          .padding()
         
            TextField("Podaj kwote jaka chcesz otrzymac",text: $kwota){()->Void in
                if(Double(self.kwota) != nil){
                    
                
                
                var a : Double = 1.0
                var b : Double = 1.0
                if(self.selection==Waluta.euro){
                    a  = 4.49
            }
                else if(self.selection==Waluta.dolary){
                    a = 4.25
                }
                if(self.selection2==Waluta.euro){
                        b  = 4.49
                }
                    else if(self.selection2==Waluta.dolary){
                        b = 4.25
                    }
                    
                    var pom : Double =  Double( self.kwota )!
                    pom = pom * (b/a)
                     self.wynik  = String(pom)
                }
                
                
               
         
            else{
                    self.wynik = "error"
            }
            Text("Do zaplaty: \(wynik) ")
            }
    }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
