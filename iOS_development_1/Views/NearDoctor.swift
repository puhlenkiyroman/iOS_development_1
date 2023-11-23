import SwiftUI

struct NearDoctor: View {
    var body : some View {
        VStack {
            HStack {
                VStack(alignment: .leading) {
                    Text("Near Doctor")
                        .font(FontFile.Fonts.poppins_semibold_16)
                        .foregroundColor(Color.textBlack)
                }
                Spacer()
            }
        }
        .padding([.leading, .trailing], 40)
    }
}

struct NearDoctor_Previews: PreviewProvider {
    static var previews: some View {
        NearDoctor()
    }
}
