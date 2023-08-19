//
//  SignUp.swift
//  GApple
//
//  Created by 한재형 on 2023/08/17.
//

import SwiftUI

struct SignUp: View {
    @State private var email = ""
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
                        //이메일 입력 칸
                        VStack{
                            HStack{
                                Text("Email")
                                    .font(.custom("AppleSDGothicNeoB00", size: 16))
                                    .foregroundColor(Color(red: 1, green: 0.54, blue: 0))
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
                                .background(Color(red: 1, green: 0.54, blue: 0))
                        }.padding(.bottom, 50)
                        //인증 버튼
                        NavigationLink{
                            SignUp2()
                        }label: {
                            Rectangle()
                                .foregroundColor(.clear)
                                .frame(width: 260, height: 40)
                                .background(Color(red: 1, green: 0.54, blue: 0))
                                .cornerRadius(10)
                                .overlay(Text("인증").font(.system(size: 17))
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

struct SignUp_Previews: PreviewProvider {
    static var previews: some View {
        SignUp()
    }
}
