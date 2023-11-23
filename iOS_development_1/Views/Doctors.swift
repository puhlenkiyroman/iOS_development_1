//
//  Doctors.swift
//  iOS_development_1
//
//  Created by Роман on 23.11.2023.
//

import SwiftUI

struct Doctors: View {
    @State private var isButtonClicked = false
    var doctorName: String
    var doctorSpecialisation: String
    var review: String
    var time: String
    var body: some View {
        VStack(alignment: .center) {
            HStack {
                Button(action: {
                    self.isButtonClicked.toggle()
                }){
                    Image("doctor_photo").resizable()
                        .frame(width: imageSize.defaultWidthIconSize, height: imageSize.defaultHeightIconSize)
                        .aspectRatio(contentMode: .fill)
                        .mask(Circle())
                        .clipped()
                        .background(Circle().fill(Color.white))
                    VStack(alignment: .leading, spacing: 16) {
                        Text(doctorName)
                            .font(FontFile.Fonts.poppins_regular_16)
                            .foregroundColor(.black)
                        Text(doctorSpecialisation)
                            .font(FontFile.Fonts.poppins_regular_14)
                            .foregroundColor(.textGrey)
                    }
                }
                Spacer()
                Image("location")
                    .frame(width: imageSize.smallIconSize, height: imageSize.smallIconSize)
                Text("1.2 KM")
                    .font(FontFile.Fonts.poppins_regular_14)
                    .foregroundColor(Color.textGrey)
            }
            .padding(.bottom, 5)
            
            Divider().overlay(Color.white.opacity(0.8))
            
            HStack {
                Button(action: {
                    self.isButtonClicked.toggle()
                }){
                    Image("yellow-clock")
                        .padding(.trailing, 4)
                }
                Text(review)                  .font(FontFile.Fonts.poppins_regular_12)
                    .foregroundColor(Color.reviewYellow)
                    .padding(.trailing, 8)
                
                Button(action: {
                    self.isButtonClicked.toggle()
                }){
                    Image("blue-clock")
                        .padding(.trailing, 4)
                }
                Text(time)
                    .font(FontFile.Fonts.poppins_regular_12)
                    .foregroundColor(Color.cardBlue)
                    .padding(.trailing, 8)
            }
            .padding(.top, 16)
        }
        .frame(width: imageSize.frameWidthSize, height: imageSize.frameHeightSize, alignment: .top)
        .padding(.horizontal, 16)
        .padding(.vertical, 20)
        .background(.white)
        .cornerRadius(12)
        .shadow(color: Color.shadowWhite.opacity(0.04), radius: 10, x: 2, y: 12)
    }
}

struct Doctors_Previews: PreviewProvider {
    static var previews: some View {
        Doctors(doctorName: "Dr. Joseph Brostito", doctorSpecialisation: "Dental Specialist", review: "4,8 (120 Reviews)", time: "Open at 17.00")
    }
}
