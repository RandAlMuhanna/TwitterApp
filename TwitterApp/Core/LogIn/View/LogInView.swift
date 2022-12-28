//
//  LogInView.swift
//  TwitterApp
//
//  Created by Rand AlMuhanna on 04/06/1444 AH.
//

import SwiftUI

struct LogInView: View {
    
    @State private var email = ""
    @State private var password = ""
    
    var body: some View {
        VStack(spacing: 70){
            ReusableHeaderView(HeadA: "Welcome", HeadB: "LogIn")
            

            
            VStack{
                InputTextField(icon: "envelope", placeholder: "Email", inputText: $email)
                
                InputTextField(icon: "lock", placeholder: "Password", inputText: $password)
                
            }
            .padding(.horizontal ,30)
            .padding(.top ,30)

            HStack{
                Spacer()
                NavigationLink {
                    Text("Reset Password View")
                } label: {
                    Text("Forgot Password?")
                        .font(.caption)
                        .fontWeight(.semibold)
                        .foregroundColor(Color(.systemBlue))
                        .padding(.top)
                        .padding(.trailing ,24)
                }

            
            }
            Button {
                print("Sign In")
            } label: {
                Text("Sign in")
                    .font(.headline)
                    .fontWeight(.semibold)
                    .frame(width: 340 , height: 50)
                    .foregroundColor(.white)
                    .background(Color(.systemBlue))
                    .clipShape(Capsule())
                    .padding(.bottom)
            }

            NavigationLink {
                SignUpView()
                    .navigationBarBackButtonHidden(true)
            } label: {
                HStack{
                    Text(" Don't have an account ?")
                        .font(.footnote)
                    Text("Sign Up")
                        .font(.footnote)
                        .fontWeight(.semibold)

                }
                .foregroundColor(Color(.systemBlue))
                .padding(.bottom)
            }

            Spacer()
        }
        .ignoresSafeArea()

    }
}

struct LogInView_Previews: PreviewProvider {
    static var previews: some View {
        LogInView()
    }
}
