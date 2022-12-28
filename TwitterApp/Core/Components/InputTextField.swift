//
//  InputTextField.swift
//  TwitterApp
//
//  Created by Rand AlMuhanna on 04/06/1444 AH.
//

import SwiftUI

struct InputTextField: View {
    
    let icon : String
    let placeholder : String
    @Binding var inputText : String
  
    var body: some View {
        VStack{
            
            HStack{
                

                Image(systemName: icon)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 20 , height: 20)
                    .foregroundColor(Color(.darkGray))
               
                TextField(placeholder, text: $inputText)
                    .padding()
              
            }
            Divider()
                
        }
    }
}

struct InputTextField_Previews: PreviewProvider {
    static var previews: some View {
        InputTextField(icon: "envelope", placeholder: "Email", inputText: .constant(""))
    }
}
