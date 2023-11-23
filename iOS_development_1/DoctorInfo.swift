import SwiftUI

struct DoctorInfo: View {
    var doctorName: String
    var doctorSpecialisation: String
    var body : some View {
        VStack() {
            HStack {
                Image("doctor_photo").resizable()
                    .frame(width: imageSize.defaultIconSize, height: 72)
                    .aspectRatio(contentMode: .fill)
                    .mask(Circle())
                    .clipped()
                    .background(Circle().fill(Color.white))
                
                VStack(alignment: .leading, spacing: 16) {
                    Text(doctorName)
                        .font(.boldTitle)
                        .foregroundColor(.white)
                    Text(doctorSpecialisation)
                        .font(.regularText)
                        .foregroundColor(.white)
                }
                
                Spacer()
                
                Image("arrow_right")
                    .resizable()
                    .frame(width: imageSize.regularIconSize, height: imageSize.regularIconSize)
            }
            .padding(.bottom, 10)
            
            Divider().overlay(Color.white.opacity(0.8))
            
            HStack {
                Image("calendar-2")
                    .padding(.trailing, 4)
                Text("Sunday, 12 June")
                    .font(.smallText)
                    .foregroundColor(.white)
                    .padding(.trailing, 8)
                
                Image("clock")
                    .padding(.trailing, 4)
                Text("11:00 - 12:00 AM")
                    .font(.smallText)
                    .foregroundColor(.white)
                    .padding(.trailing, 8)
            }
            .padding(.top, 16)
        }
        .frame(width: imageSize.frameWidthSize, height: imageSize.frameHeightSize, alignment: .top)
        .padding(20)
        .background(Color.cardBlue)
        .cornerRadius(12)
    }
}

struct DoctorInfo_Previews: PreviewProvider {
    static var previews: some View {
        DoctorInfo(doctorName: "Dr. Imran Syahir", doctorSpecialisation: "General Doctor")
    }
}
