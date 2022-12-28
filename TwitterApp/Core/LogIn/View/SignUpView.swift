//
//  SignUpView.swift
//  TwitterApp
//
//  Created by Rand AlMuhanna on 04/06/1444 AH.
//

import SwiftUI

struct SignUpView: View {
    
    @State private var email = ""
    @State private var fullName = ""
    @State private var passwird = ""
    @State private var phoneNumber = ""
    
    @Environment(\.presentationMode) var presentationMode

    var body: some View {
        
        VStack {
            ReusableHeaderView(HeadA: "Get Started ", HeadB: "SignUp")
            Spacer()
            
            VStack(spacing : 16){
                
                InputTextField(icon: "envelope", placeholder: "Email", inputText: $email)
                
                InputTextField(icon: "person", placeholder: "Full Name", inputText: $fullName)
                
                InputTextField(icon: "lock", placeholder: "Password", inputText: $passwird)
                
                InputTextField(icon: "phone", placeholder: "Phone Number", inputText: $phoneNumber)
            }            .padding(30)

            
            Button {
                print("Sign Up")
            } label: {
                Text("Sign Up")
                    .font(.headline)
                    .fontWeight(.semibold)
                    .frame(width: 340 , height: 50)
                    .foregroundColor(.white)
                    .background(Color(.systemBlue))
                    .clipShape(Capsule())
                    .padding(40)
            }
            
            Button {
                presentationMode.wrappedValue.dismiss()
            } label: {
                HStack{
                    Text("Already have an account ?")
                        .font(.footnote)
                    
                    Text("Sign In")
                        .font(.footnote)
                        .fontWeight(.semibold)
                } .padding(.bottom ,70)
            }

        }
        .ignoresSafeArea()
    }
        
}

struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
    }
}
