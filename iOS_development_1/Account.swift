import SwiftUI

struct Account: View {
    var body: some View {
        VStack {
            HStack {
                VStack(alignment: .leading) {
                    Text("Hello,")
                        .font(.regularText)
                        .foregroundColor(Color.textGrey)
                    Text("Hi James")
                        .font(.boldTitle)
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
