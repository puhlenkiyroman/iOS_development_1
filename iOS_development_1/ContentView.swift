import SwiftUI

struct ContentView: View {
    var body: some View {
        Account()
            .padding([.leading, .trailing], 20)
        DoctorInfo(doctorName: "Dr. Imran Syahir", doctorSpecialisation: "General Doctor")
            .padding([.leading, .trailing], 24)
        SearchDoctor()
        Buttons()
        Spacer()
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
