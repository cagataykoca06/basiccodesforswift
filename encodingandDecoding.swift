import Foundation

struct User: Codable {
  let name: String
  let age: Int

  var jsonEncodedData: Data {
    return try! JSONEncoder().encode(self)
  }

  static func decodeUser(from jsonData: Data) -> User {
    return try! JSONDecoder().decode(User.self, from: jsonData)
  }
}

let testUser = User(name: "Test", age: 50)
let encodedUser = testUser.jsonEncodedData
let decodedUser = User.decodeUser(from: encodedUser)