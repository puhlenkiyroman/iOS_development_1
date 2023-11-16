import SwiftUI

struct Account: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 6) {
            Text("Hello,")
                .foregroundColor(Color (.gray))
            HStack {
                Text("Hi James")
                    .bold()
                Spacer()
                Image("account_photo")
                    .resizable()
                    .frame(width: 56, height: 56)
                    .clipShape(Circle())
            }
        }
        .padding(.top, 11)
        .padding(.horizontal, 24)
        Spacer()
    }
}

struct Account_Previews: PreviewProvider {
    static var previews: some View {
        Account()
    }
}
