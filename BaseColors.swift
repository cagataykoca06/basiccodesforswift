let mainColor = Color(red: 20/255, green: 28/255, blue: 58/255)
let accentColor = Color(red: 48/255, green: 105/255, blue: 240/255)

let white = Color(red: 1, green: 1, blue: 1)


//you should bind these values to Zstack in SwiftUI like this: 
//var body: some View {
//    ZStack {
//        mainColor
//    }
//}


//then you can add text to UI like this in your Zstack repository:
var body: some View {
    ZStack {
        mainColor.ignoresSafeArea()
        VStack {
            Text("1 / 10")
            Text("What was the first computer bug?")
        }        
    }
    .foregroundColor(.white)
}

// Congrats. You are using the white color that you defined it before.

