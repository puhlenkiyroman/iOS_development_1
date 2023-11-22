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
                    .frame(width: 56, height: 56)
                    .clipShape(Circle())
                
            }
            .padding(.top, 11)
            .padding(.horizontal, 24)
            Spacer()
        }
    }
}

struct Account_Previews: PreviewProvider {
    static var previews: some View {
        Account()
    }
}
