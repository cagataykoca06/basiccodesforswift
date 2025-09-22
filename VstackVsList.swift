// body variable of the ContentViev can be:
    var body: some View {
        VStack {
            Text("Item 1")
            Text("Item 2")
            Text("Item 3")
        }
    }

//if you need a view with lines:

    var body: some View {
        List {
            Text("Item 1")
            Text("Item 2")
            Text("Item 3")
        }
    }

//if you want to add a header, the code should be like this in the view with lines:

 var body: some View {
        VStack {
            Text("I ❤️ List").font(.headline)
            List {
                Text("Item 1")
                Text("Item 2")
                Text("Item 3")
            }
            .listStyle(InsetGroupedListStyle())
        }
    }
 

// a dynamic set of lists and arrays (which in coded in source swift file)example can be seen:

struct Animal {
    var uniqueID : Int
    var name: String
}

let animals = [
    Animal(uniqueID: 0, name: "Dog"),
    Animal(uniqueID: 1, name: "Cat"),
    Animal(uniqueID: 2, name: "Parrot")
]

//modifying ContentView in this example:

let animals = [
    Animal(uniqueID: 0, name: "Dog"),
    Animal(uniqueID: 1, name: "Cat"),
    Animal(uniqueID: 2, name: "Parrot")
]
