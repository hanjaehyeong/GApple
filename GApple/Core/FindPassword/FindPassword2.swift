//
//  FindPassword2.swift
//  GApple
//
//  Created by 한재형 on 2023/08/18.
//

import SwiftUI

struct FindPassword2: View {
    @State private var email = ""
    @State private var chnum = ""
    var body: some View {
        NavigationView{
            ZStack{
                Color(red: 1, green: 0.98, blue: 0.93)
                    .ignoresSafeArea()
                VStack{
                    Spacer()
                    Text("Find Password")
                        .font(.custom("Nunito-Black", size: 35))
                        .foregroundColor(Color(red: 1, green: 0.33, blue: 0.12).opacity(0.8))
                        .padding(.top, -120)

                    VStack{
                        //이메일 입력 칸
                        VStack{
                            HStack{
                                Text("Email")
                                    .font(.custom("AppleSDGothicNeoB00", size: 16))
                                    .foregroundColor(Color(red: 1, green: 0.33, blue: 0.12).opacity(0.8))
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
                                .background(Color(red: 1, green: 0.33, blue: 0.12).opacity(0.8))
                        }.padding(.bottom, 50)
                        //인증번호 입력 칸
                        VStack{
                            HStack{
                                Text("인증번호")
                                    .font(.custom("AppleSDGothicNeoB00", size: 16))
                                    .foregroundColor(Color(red: 1, green: 0.33, blue: 0.12).opacity(0.8))
                                    .padding(.bottom, 15)
                                Spacer()
                            }
                            .frame(width: 260)
                            .padding(.bottom, -20)
                            HStack{
                                TextField("인증번호를 입력해주세요.", text: $chnum)
                                    
                                    .font(.system(size: 12))
                            }.frame(width: 260)
                                .padding(.bottom, -7)
                            Rectangle()
                                .foregroundColor(.clear)
                                .frame(width: 260, height: 2)
                                .background(Color(red: 1, green: 0.33, blue: 0.12).opacity(0.8))
                        }.padding(.bottom, 50)
                        //비밀번호 입력 칸
                        NavigationLink{
                            SignUp3()
                        }label: {
                            Rectangle()
                                .foregroundColor(.clear)
                                .frame(width: 260, height: 40)
                                .background(Color(red: 1, green: 0.33, blue: 0.12).opacity(0.8))
                                .cornerRadius(10)
                                .overlay(Text("확인").font(.system(size: 17))
                                    .foregroundColor(.white))
                        }.padding(.top, 50)
                    }
                    Spacer()
                    Text("인증번호가 발송되지 않았나요?")
                        .font(Font.custom("AppleSDGothicNeoM00", size: 12))
                        .foregroundColor(Color(red: 0.33, green: 0.33, blue: 0.33))
                        .frame(height: UIScreen.main.bounds.height * 0.08)
                }
            }
        }.navigationBarBackButtonHidden(true)
    }
}

struct FindPassword2_Previews: PreviewProvider {
    static var previews: some View {
        FindPassword2()
    }
}
