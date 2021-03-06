// https://swapi.dev/

struct StarWarsPeople: Codable{
  var name: String
}

struct Results: Codable{
    var results: [StarWarsPeople]
    var count: Int
}
import Foundation

let url = URL(string: "https://swapi.dev/api/people/")!

URLSession.shared.dataTask(with: url) { (data, response, error) in
    if let error = error{
        print("Error",error)
    }else{
       if let data = data{
            do{
                let jsonDecoder = JSONDecoder()
                let parsedJSON = try jsonDecoder.decode(Results.self, from: data)
                print(parsedJSON.count)
                for person in parsedJSON.results{
                    print(person.name)
                }
            }catch{
                print("error")
            }
        }
    }
}.resume()
