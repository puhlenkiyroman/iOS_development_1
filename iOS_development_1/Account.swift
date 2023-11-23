import SwiftUI

struct Account: View {
    var body: some View {
        VStack {
            HStack {
                VStack(alignment: .leading) {
                    Text(NSLocalizedString("welcome_message", comment: ""))
                        //.font(FontFile.Fonts.poppins_regular_14)
                        .foregroundColor(Color.textGrey)
                    Text(NSLocalizedString("greetings", comment: ""))     //.font(.poppins_regular_14)
                        .foregroundColor(Color.textBlack)
                }
                Spacer()
                Image("account_photo")
                    .resizable()
                    .frame(width: imageSize.defaultIconSize, height: imageSize.defaultIconSize)
                    .clipShape(Circle())
            }
        }
        .padding([.leading, .trailing], 20)
        .padding(.bottom, 20)
        .padding(.top, 20)
        
    }
}

struct Account_Previews: PreviewProvider {
    static var previews: some View {
        Account()
    }
}
