import SwiftUI

struct ContentView: View {
    var body: some View {
        Account(username: "Roman")
            .padding([.leading, .trailing], 20)
        DoctorInfo(doctorName: "Dr. Imran Syahir", doctorSpecialisation: "General Doctor", date: "Sunday, 12 June", time: "11:00 - 12:00 AM")
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
