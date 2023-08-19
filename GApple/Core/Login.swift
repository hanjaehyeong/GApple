//
//  Login.swift
//  GApple
//
//  Created by 한재형 on 2023/08/17.
//

import SwiftUI

struct Login: View {
    @State private var email = ""
    @State private var password = ""
    @State private var seepassword = false
    var body: some View {
        NavigationView{
            ZStack{
                Color(red: 1, green: 0.98, blue: 0.93)
                    .ignoresSafeArea()
                VStack{
                    Spacer()
                    Text("Login")
                        .font(.custom("Nunito-Black", size: 45))
                        .foregroundColor(Color(red: 1, green: 0.76, blue: 0.31))
                        .padding(.top, -120)
                    VStack{
                        //이메일 입력 칸
                        VStack{
                            HStack{
                                Text("Email")
                                    .font(.custom("AppleSDGothicNeoB00", size: 16))
                                    .foregroundColor(Color(red: 1, green: 0.68, blue: 0.2))
                                    .padding(.bottom, 15)
                                Spacer()
                            }
                            .frame(width: 260)
                            .padding(.bottom, -20)
                            HStack{
                                TextField("", text: $email)
                                    .font(.system(size: 12))
                                Text("@gsm.hs.kr")
                                    .font(.system(size: 14))
                                    .foregroundColor(Color(red: 0.53, green: 0.53, blue: 0.53))
                            }.frame(width: 260)
                                .padding(.bottom, -7)
                            Rectangle()
                                .foregroundColor(.clear)
                                .frame(width: 260, height: 2)
                                .background(Color(red: 1, green: 0.68, blue: 0.06))
                        }.padding(.bottom, 50)
                        //비밀번호 입력 칸
                        VStack{
                            HStack{
                                Text("Password")
                                    .font(.custom("AppleSDGothicNeoB00", size: 16))
                                    .foregroundColor(Color(red: 1, green: 0.68, blue: 0.2))
                                    .padding(.bottom, 15)
                                Spacer()
                            }
                            .frame(width: 260)
                            .padding(.bottom, -20)
                            HStack{
                                SecureField("", text: $password)
                                    .font(.system(size: 12))
                                    .offset(y: 4)
                                Button{
                                    seepassword.toggle()
                                }label: {
                                    Image(systemName: seepassword ? "eye.slash" : "eye")
                                        .foregroundColor(Color(red: 0.53, green: 0.53, blue: 0.53))
                                        .frame(width: 18, height: 15)
                                }
                            }.frame(width: 260)
                                .padding(.bottom, -5)
                            Rectangle()
                                .foregroundColor(.clear)
                                .frame(width: 260, height: 2)
                                .background(Color(red: 1, green: 0.68, blue: 0.06))
                        }
                        HStack{
                            Text("Forgot Password?")
                                .font(.system(size: 12))
                                .foregroundColor(Color(red: 0.53, green: 0.53, blue: 0.53))
                            Spacer()
                        }
                        .frame(width: 260)
                        NavigationLink{
                            SignUp()
                        }label: {
                            Rectangle()
                                .foregroundColor(.clear)
                                .frame(width: 260, height: 40)
                                .background(Color(red: 1, green: 0.79, blue: 0.38))
                                .cornerRadius(10)
                                .overlay(Text("Login").font(.system(size: 17))
                                    .foregroundColor(.white))
                        }.padding(.top, 50)
                    }
                    Spacer()
                    Text("아직 계정이 없으신가요?")
                        .font(Font.custom("AppleSDGothicNeoM00", size: 12))
                        .foregroundColor(Color(red: 0.33, green: 0.33, blue: 0.33))
                        .frame(height: UIScreen.main.bounds.height * 0.08)
                }
            }
        }.navigationBarBackButtonHidden(true)
    }
}

struct Login_Previews: PreviewProvider {
    static var previews: some View {
        Login()
    }
}
