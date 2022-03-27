//
//  APICaller.swift
//  NetflixClone
//
//  Created by 이해공 on 2022/03/27.
//

import Foundation

class YoutubeAPICaller {
    static let shared = YoutubeAPICaller()
    
    // https://www.googleapis.com/youtube/v3/search
    func getMovie(with query: String, completion: @escaping (Result<VideoElement, Error>) -> Void) {
        guard let query = query.addingPercentEncoding(withAllowedCharacters: .urlHostAllowed) else { return }
        guard let url = URL(string: "\(APIConstant.youtubeBaseUrl)q=\(query)&key=\(APIKey.Youtube)") else { return }
        let task = URLSession.shared.dataTask(with: URLRequest(url: url)) { data, _, error in
            guard let data = data, error == nil else { return }
            
            do {
                let results = try JSONDecoder().decode(YoutubeSearchResponse.self, from: data)
                completion(.success(results.items[0]))
            } catch {
                completion(.failure(error))
            }
        }
        
        task.resume()
    }
}
