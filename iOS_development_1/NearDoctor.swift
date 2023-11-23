import SwiftUI

struct NearDoctor: View {
    @State private var isButtonClicked = false
    var doctorName: String
    var doctorSpecialisation: String
    var review: String
    var time: String
    var body : some View {
        VStack {
            HStack {
                VStack(alignment: .leading, spacing: 6) {
                    Text("Near Doctor")
                        .font(FontFile.Fonts.poppins_semibold_16)
                      .foregroundColor(Color.textBlack)
                }
                Spacer()
                }
        }
        .padding([.leading, .trailing], 40)
        .padding(.bottom, 20)
        
        VStack() {
            
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
                Button(action: {
                    self.isButtonClicked.toggle()
                }){
                    Image("arrow_right")
                        .resizable()
                        .frame(width: imageSize.regularIconSize, height: imageSize.regularIconSize)
                }
            }
            .padding(.bottom, 5)
            
            Divider().overlay(Color.white.opacity(0.8))
            
            HStack {
                Image("calendar-2")
                    .padding(.trailing, 4)
                Text(review)                  .font(FontFile.Fonts.poppins_regular_12)
                    .foregroundColor(Color(red: 1, green: 0.69, blue: 0.32))
                    .padding(.trailing, 8)
                
                Image("clock")
                    .padding(.trailing, 4)
                Text(time)
                    .font(FontFile.Fonts.poppins_regular_12)
                    .foregroundColor(Color(red: 0.28, green: 0.58, blue: 1))
                    .padding(.trailing, 8)
            }
            .padding(.top, 16)
        }
        .frame(width: imageSize.frameWidthSize, height: imageSize.frameHeightSize, alignment: .top)
        .padding(.horizontal, 16)
        .padding(.vertical, 20)
        .background(.white)
        .cornerRadius(12)
        .shadow(color: Color(red: 0.35, green: 0.46, blue: 0.65).opacity(0.04), radius: 10, x: 2, y: 12)
    }
}

struct NearDoctor_Previews: PreviewProvider {
    static var previews: some View {
        NearDoctor(doctorName: "Dr. Joseph Brostito", doctorSpecialisation: "Dental Specialist", review: "4,8 (120 Reviews)", time: "Open at 17.00")
    }
}
