//
//  API.swift
//  NetflixClone
//
//  Created by 이해공 on 2022/03/27.
//

import Foundation

struct APIConstant {
    static let tmdbBaseUrl = "https://api.themoviedb.org"
    static let youtubeBaseUrl = "https://www.googleapis.com/youtube/v3/search?"
}

enum APIError: Error {
    case failedTogetData
}
