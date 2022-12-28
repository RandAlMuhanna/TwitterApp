//
//  TextField.swift
//  TwitterApp
//
//  Created by Rand AlMuhanna on 03/06/1444 AH.
//

import SwiftUI

struct TextField: View {
    @Binding var text: String
    let placeholder : String

    
    init(_ placeholder: String , text: Binding<String>){
        self.placeholder = placeholder
        self._text = text
        
        UITextView.appearance().backgroundColor = .clear
    }
    
    
    var body: some View {
        
        ZStack(alignment: .topLeading){
            // If the there is no text show placeholder
            if text.isEmpty{
                Text(placeholder)
                    .foregroundColor(Color(.placeholderText))
                    
            }
            //else show the text 
            TextEditor(text: $text)
                .padding()
        }
        .font(.body)
    }
}

