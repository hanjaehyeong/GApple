//
//  SignUp3.swift
//  GApple
//
//  Created by 한재형 on 2023/08/18.
//

import SwiftUI

struct SignUp3: View {
    @State private var mkpassword = ""
    @State private var chpassword = ""
    @State private var seepassword = false
    var body: some View {
        NavigationView{
            ZStack{
                Color(red: 1, green: 0.98, blue: 0.93)
                    .ignoresSafeArea()
                VStack{
                    Spacer()
                    Text("Sign up")
                        .font(.custom("Nunito-Black", size: 45))
                        .foregroundColor(Color(red: 1, green: 0.54, blue: 0))
                        .padding(.top, -120)
                    VStack{
                        //비밀번호 입력 칸
                        VStack{
                            HStack{
                                Text("Password")
                                    .font(.custom("AppleSDGothicNeoB00", size: 16))
                                    .foregroundColor(Color(red: 1, green: 0.54, blue: 0))
                                    .padding(.bottom, 15)
                                Spacer()
                            }
                            .frame(width: 260)
                            .padding(.bottom, -20)
                            HStack{
                                TextField("", text: $mkpassword)
                                    .font(.system(size: 12))
                                Button{
                                    seepassword.toggle()
                                }label: {
                                    Image(systemName: seepassword ? "eye.slash" : "eye")
                                        .foregroundColor(Color(red: 0.53, green: 0.53, blue: 0.53))
                                        .frame(width: 18, height: 15)
                                }
                            }.frame(width: 260)
                            Rectangle()
                                .foregroundColor(.clear)
                                .frame(width: 260, height: 2)
                                .background(Color(red: 1, green: 0.54, blue: 0))
                            HStack{
                                Text("비밀번호는 8~16자 사이여야되며, 특수문자를 포함해야합니다.")
                                    .font(Font.custom("AppleSDGothicNeoM00", size: 9))
                                    .foregroundColor(Color(red: 0.33, green: 0.33, blue: 0.33))
                                Spacer()
                            }.frame(width: 260)
                        }.padding(.bottom, 50)
                        //비밀번호 재입력 칸
                        VStack{
                            HStack{
                                Text("Check Password")
                                    .font(.custom("AppleSDGothicNeoB00", size: 16))
                                    .foregroundColor(Color(red: 1, green: 0.54, blue: 0))
                                    .padding(.bottom, 15)
                                Spacer()
                            }
                            .frame(width: 260)
                            .padding(.bottom, -20)
                            HStack{
                                TextField("", text: $chpassword)
                                    
                                    .font(.system(size: 12))
                            }.frame(width: 260)
                                .padding(.bottom, -7)
                            Rectangle()
                                .foregroundColor(.clear)
                                .frame(width: 260, height: 2)
                                .background(Color(red: 1, green: 0.54, blue: 0))
                        }.padding(.bottom, 50)
                        //비밀번호 입력 칸
                        NavigationLink{
                            //
                        }label: {
                            Rectangle()
                                .foregroundColor(.clear)
                                .frame(width: 260, height: 40)
                                .background(Color(red: 1, green: 0.54, blue: 0))
                                .cornerRadius(10)
                                .overlay(Text("Sign up").font(.system(size: 17))
                                    .foregroundColor(.white))
                        }.padding(.top, 50)
                    }
                    Spacer()
                    Text("이미 계정이 있으신가요?")
                        .font(Font.custom("AppleSDGothicNeoM00", size: 12))
                        .foregroundColor(Color(red: 0.33, green: 0.33, blue: 0.33))
                        .frame(height: UIScreen.main.bounds.height * 0.08)
                }
            }
        }.navigationBarBackButtonHidden(true)
    }
}

struct SignUp3_Previews: PreviewProvider {
    static var previews: some View {
        SignUp3()
    }
}
