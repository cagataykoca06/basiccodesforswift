import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            Text("Home View")
            .tabItem {
                Label("Home", systemImage: "house")
            }
            Text("Profile View")
            .tabItem {
                Label("Profile", systemImage: "person.circle.fill")
            }
        }
        .tabViewStyle(PageTabViewStyle())
    }
}
