import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            Text("Initial View")
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button(action: {
                            
                              }, label {    
                            Image(systemName: "gear")
                        })
                }
            }
            .sheet(isPresented: $isPresenting) {
                NavigationView {
                    Text("Setting Page")
                    .toolbar {
                        ToolbarItem {
                            Button("Save") {}
                        }
                    }
                }
            }
        }
    }
}