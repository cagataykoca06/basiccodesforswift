VStack {
    Text("Welcome to Code History!")
        .font(.title)
        .padding()
    Button(action: {
        print("Clicked")
    }, label: {
        Text("Click me")
    })
    .padding()
    .background(Color.blue)
    .foregroundColor(.white)
}