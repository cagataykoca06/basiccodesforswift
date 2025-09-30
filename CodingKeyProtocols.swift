struct Name: Codable {
  var first: String
  var last: String

  enum CodingKeys: String, CodingKey { // 1
    case first = "first_name"
    case last = "last_name"
  }
}

struct Location: Codable {
  var city: String
  var state: String
  var country: String

  enum CodingKeys: String, CodingKey {
    case city = "city_of_student"
    case state, country
  }
}

struct Student: Codable {
  var location: Location
  var age: Int
  var favoriteTopic: String
  var name: Name
  
  enum CodingKeys: String, CodingKey {
    case favoriteTopic = "likes" // 2

    case age, location, name
  }
}