import SwiftUI

struct Buttons: View {
    @State private var isButtonClicked = false
    var body: some View {
 
    HStack(alignment: .top, spacing: 13){
        Button(action: {
            self.isButtonClicked.toggle()
        }) {
            VStack(alignment: .center, spacing: 8) {
                HStack(alignment: .top, spacing: 10) {
                    Image("sun")
                        .frame(width: imageSize.regularIconSize, height: imageSize.regularIconSize)
                }
                .padding(24)
                .background(Color.searchGrey)
                .cornerRadius(100)
                
                Text(NSLocalizedString("button1", comment: ""))
                    .font(FontFile.Fonts.poppins_medium_15)           .foregroundColor(Color.textGrey)
            }
            .padding(0)
        }
        Button(action: {
            self.isButtonClicked.toggle()
        }) {
            
            VStack(alignment: .center, spacing: 8) {
                HStack(alignment: .top, spacing: 10) {
                    Image("profile-add")
                        .frame(width: imageSize.regularIconSize, height: imageSize.regularIconSize)
                }
                .padding(24)
                .background(Color.searchGrey)
                .cornerRadius(100)
                
                Text(NSLocalizedString("button2", comment: ""))
                    .font(FontFile.Fonts.poppins_medium_15)                .foregroundColor(Color.textGrey)
            }
            .padding(0)
        }
        
        Button(action: {
            self.isButtonClicked.toggle()
        }) {
            VStack(alignment: .center, spacing: 8) {
                HStack(alignment: .top, spacing: 10) {
                    Image("link")
                        .frame(width: imageSize.regularIconSize, height: imageSize.regularIconSize)
                }
                .padding(24)
                .background(Color.searchGrey)
                .cornerRadius(100)
                
                Text(NSLocalizedString("button3", comment: ""))
                    .font(FontFile.Fonts.poppins_medium_15)                .foregroundColor(Color.textGrey)
            }
            .padding(0)
        }
        
        Button(action: {
            self.isButtonClicked.toggle()
        }) {
            
            VStack(alignment: .center, spacing: 8) {
                HStack(alignment: .top, spacing: 10) {
                    Image("hospital")
                        .frame(width: imageSize.regularIconSize, height: imageSize.regularIconSize)
                }
                .padding(24)
                .background(Color.searchGrey)
                .cornerRadius(100)
                Text(NSLocalizedString("button4", comment: ""))
                    .font(FontFile.Fonts.poppins_medium_15)               .foregroundColor(Color.textGrey)
            }
            .padding(0)
        }
 }
        Spacer()
    }
}

struct Buttons_Previews: PreviewProvider {
    static var previews: some View {
        Buttons()
    }
}
