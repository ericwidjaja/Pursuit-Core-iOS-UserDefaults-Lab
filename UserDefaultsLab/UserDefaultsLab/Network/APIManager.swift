//
//  APIManager.swift
//  UserDefaultsLab
//
//  Created by Eric Widjaja on 9/24/19.
//  Copyright © 2019 Eric Widjaja. All rights reserved.
//

import Foundation

class HoroscopeAPIManager {
    private init() {}
    
    static let shared = HoroscopeAPIManager()
    
    func getHoroscope(zodiacSign: String, completionHandler: @escaping (Result<Horoscopes, AppError>) -> Void) {
        let urlStr = "http://sandipbgt.com/theastrologer/api/horoscope/\(zodiacSign)/today/"
        guard let url = URL(string: urlStr) else {
            completionHandler(.failure(.badURL))
            return
        }
        
        NetworkHelper.manager.performDataTask(withUrl: url, andMethod: .get) { (result) in
            switch result {
            case .failure(let error) :
                completionHandler(.failure(error))
            case .success(let data):
                do {
                    let horoscopeInfo = try JSONDecoder().decode(Horoscopes.self, from: data)
                    completionHandler(.success(horoscopeInfo))
                } catch {
                    print(error.localizedDescription)
                    completionHandler(.failure(.couldNotParseJSON(rawError: error)))
                }
            }
        }
    }
}
