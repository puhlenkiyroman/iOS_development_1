import SwiftUI

struct DoctorInfo: View {
    @State private var isButtonClicked = false
    var doctorName: String
    var doctorSpecialisation: String
    var date: String
    var time: String
    var body : some View {
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
                    VStack(alignment: .leading, spacing: 20) {
                        Text(doctorName)
                            .font(FontFile.Fonts.poppins_regular_16)
                            .foregroundColor(.white)
                        Text(doctorSpecialisation)
                            .font(FontFile.Fonts.poppins_regular_14)
                            .foregroundColor(.white)
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
                Button(action: {
                    self.isButtonClicked.toggle()
                }){
                    Image("calendar-2")
                        .padding(.trailing, 4)
                }
                Text(date)                  .font(FontFile.Fonts.poppins_regular_12)
                    .foregroundColor(.white)
                    .padding(.trailing, 8)
                
                Button(action: {
                    self.isButtonClicked.toggle()
                }){
                    Image("clock")
                        .padding(.trailing, 4)
                }
                Text(time)
                    .font(FontFile.Fonts.poppins_regular_12)
                    .foregroundColor(.white)
                    .padding(.trailing, 8)
            }
            .padding(.top, 16)
        }
        .frame(width: imageSize.frameWidthSize, height: imageSize.frameHeightSize, alignment: .top)
        .padding(20)
        .background(Color.cardBlue)
        .cornerRadius(12)
        .padding(.bottom, 20)
    }
}

struct DoctorInfo_Previews: PreviewProvider {
    static var previews: some View {
        DoctorInfo(doctorName: "Dr. Imran Syahir", doctorSpecialisation: "General Doctor", date: "Sunday, 12 June", time: "11:00 - 12:00 AM")
    }
}
