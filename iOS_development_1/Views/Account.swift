import SwiftUI

struct Account: View {
    @State private var isButtonClicked = false
    var username: String
    var body: some View {
        VStack {
            HStack {
                VStack(alignment: .leading, spacing: 6) {
                    Text(NSLocalizedString("welcome_message", comment: ""))
                        .font(FontFile.Fonts.poppins_regular_16)
                        .foregroundColor(Color.textGrey)
                    Text(NSLocalizedString("Hi " + username, comment: ""))   .font(FontFile.Fonts.poppins_bold_20)
                        .foregroundColor(Color.textBlack)
                }
                Spacer()
                Button(action: {
                    self.isButtonClicked.toggle()
                }){
                    Image("account_photo")
                        .resizable()
                        .frame(width: imageSize.defaultWidthIconSize, height: imageSize.defaultWidthIconSize)
                        .clipShape(Circle())
                }
            }
        }
        .padding([.leading, .trailing], 20)
        .padding(.bottom, 20)
        .padding(.top, 20)
        
    }
}

struct Account_Previews: PreviewProvider {
    static var previews: some View {
        Account(username: "Roman")
    }
}
