//
//  Service.swift
//  AppStoreJSONApi
//
//  Created by 石川大輔 on 2021/06/15.
//

import Foundation

class Service {
    
    static let shared = Service() // singleton
    
    func fetchApps(searchTerm: String, completion: @escaping ([Result], Error?) -> Void) {
       
        let urlString = "https://itunes.apple.com/search?term=\(searchTerm)&entity=software"
        guard let url = URL(string: urlString) else { return }

        // fetch data from interner
        URLSession.shared.dataTask(with: url) { (data, resp, err) in

            if let err = err {
                print("Failed to fetch apps:", err)
                completion([], nil)
                return
            }

        //   success
            guard let data = data else { return }

            do {
                let searchResult = try JSONDecoder().decode(SearchResult.self, from: data)
                
                completion(searchResult.results, nil)

            } catch let jsonErr {
                print("Faild to dedode json:", jsonErr)
                completion([], jsonErr)
            }

        }.resume()
        
    }
    
}
