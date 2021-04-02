//
//  ContentView.swift
//  SwiftUI Calculator
//
//  Created by Noor Walid on 08/03/2021.
//

import SwiftUI

let operationArray = ["+","-","/","x","="]
let numbersArray = [1,2,3,4,5,6,7,8,9]


struct ContentView: View {
    
    var body: some View {
        ZStack{
            Color(.black).edgesIgnoringSafeArea(.all)
            VStack {
                Text("Result")
                    .padding(.bottom, 160)
                    .foregroundColor(.white)
                    .padding()
                
                HStack(spacing:32){
                    VStack{
                        HStack{ForEach(numbersArray, id: \.self) {number in
                            Button("\(number)"){}
                                .frame(width: 30, height: 50, alignment: .center)
                                .foregroundColor(.white)
                        }
                        }
                        
                    }
                    VStack{
                        ForEach(operationArray, id: \.self) {op in
                            Button(op){}
                                .padding()
                                .foregroundColor(.white)
                        }
                    }
                    
                }
                
                Button("0"){}
                    .foregroundColor(.white)
                    .frame(width: 300, height: 50, alignment: .center)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
