import SwiftUI

struct SearchDoctor: View {
    @State private var isSearch = ""
    var body: some View {
            HStack(alignment: .center, spacing: 12)
            {
                Image("search-normal")
                    .padding(.trailing, 4)
                TextField(NSLocalizedString("text_field", comment: ""), text: $isSearch)
                    .font(FontFile.Fonts.poppins_medium_15)            .foregroundColor(Color.textGrey)
            }
            .padding(16)
            .frame(width: imageSize.searchWidthSize, alignment: .leading)
            .background(Color.searchGrey)
            .cornerRadius(12)
        }
}
struct SearchDoctor_Previews: PreviewProvider {
    static var previews: some View {
        SearchDoctor()
    }
}
