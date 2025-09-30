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

struct Movie: Decodable { 
  var name: String
  var releaseDate: Date

  enum CodingKeys: String, CodingKey {
    case movie = "movie_name"

    case releaseMonth = "release_month"
    case releaseDay = "release_day"
    case releaseYear = "release_year"
  }

  init(from decoder: Decoder) throws {
    let values = try decoder.container(keyedBy: CodingKeys.self)
    name = try values.decode(String.self, forKey: .movie)
    let releaseMonth = try values.decode(String.self, forKey: .releaseMonth)
    let releaseDay = try values.decode(String.self, forKey: .releaseDay)
    let releaseYear = try values.decode(String.self, forKey: .releaseYear)
      
    let dateString = "\(releaseMonth)/\(releaseDay)/\(releaseYear)"
    let dateFormatter = DateFormatter()
      dateFormatter.dateFormat = "MM/dd/yy"
      
    releaseDate = dateFormatter.date(from: dateString) ?? Date()
  }
}
