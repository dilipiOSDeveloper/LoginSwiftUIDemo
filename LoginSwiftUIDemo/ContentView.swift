//
//  ContentView.swift
//  LoginSwiftUIDemo
//
//  Created by Dilip Tiwari on 24/05/23.
//

import SwiftUI

struct ContentView: View {
    @State var email: String = ""
    @State var password: String = ""
    
    var body: some View {
        
        ZStack {
            Spacer()
            ScrollView {
                HStack {
                    Image("logo")
                        .resizable()
                        .frame(width: 120.0,height: 40.0)
                    Spacer()
                }
                VStack(alignment: .leading,spacing: 8.0) {
                    
                    Text("Login")
                        .font(.bold(.title)())
                        .foregroundColor(Color.black)
                    
                    Text("Enter your Email address")
                        .font(.title3)
                        .foregroundColor(Color.black)
                    
                    TextField("", text: $email)
                        .frame(height: 50)
                        .background(Color.white)
                        .cornerRadius(10)
                        .padding(8)
                    
                    Text("Enter your Password")
                        .font(.title3)
                        .foregroundColor(Color.black)
                    
                    TextField("", text: $password)
                        .frame(height: 50)
                        .background(Color.white)
                        .cornerRadius(10)
                        .padding(.bottom)
                }
                
                VStack(alignment: .trailing){
                    Text("Forgot password?")
                        .font(.callout)
                        .foregroundColor(Color.black)
                        .padding(.bottom)
                }
                
                Button("Login", action: {
                    print("Login clicked")
                })
                .frame(maxWidth: .infinity,minHeight: 55)
                .font(.title)
                .background(.black)
                .clipShape(Rectangle())
                .cornerRadius(12)
                .padding(.top)
                
                VStack {
                    Button("Login") {
                        
                    }
                    .padding(EdgeInsets(top:8, leading: 8, bottom: 8, trailing: 8))
                    .frame(width: 360,height: 55)
                    .font(.title)
                    .cornerRadius(10)
                    
                    HStack {
                        Text("Don't have an account?")
                            .font(.subheadline)
                            .foregroundColor(Color.gray)
                        Button("Sign up") {
                            print("sign up clicked")
                        }.foregroundColor(Color.pink)
                            .font(.subheadline)
                        
                    }
                }
                
                HStack {
                    VStack{
                        Divider()
                    }
                    Text("or")
                        .font(.caption)
                        .foregroundColor(Color.black)
                    VStack{
                        Divider()
                    }
                }.padding(.vertical)
                
                Text("Contiue with")
                    .font(.callout)
                    .foregroundColor(Color.black)
                    .padding(.bottom)
                
                
                Button(action: {}) {
                    Image(systemName: "face.smiling")
                    Text("Sign in with Apple")
                        .font(.callout)
                }
                
                
                HStack {
                    Button(action: { }) {
                      Text("Facebook")
                    }
                    .buttonStyle(CustomButtonStyle())
                    
                    
                    Button(action: { }) {
                      Text("Google")
                    }
                    .buttonStyle(CustomButtonStyle())
                }
            }
        }
        .padding()
        .background(Color.accentColor)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
