protocol Viewer {
    func login()
    func logout()
    func showContent()
}

protocol Creator: Viewer {
    func uploadNewContent(name: String)
}

struct VideoContentCreator: Creator {
    func login() {
        print("Successfully logged in")
    }
    func logout() {
        print("Successfully logged out")
    }
    func showContent() {
        print("Here are the new videos")
    }
    func uploadNewContent(name: String) {
        print("Thanks for uploading your new video: \(name)!")
    }
}
