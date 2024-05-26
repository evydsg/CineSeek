//
//  Movie.swift
//  CineSeek
//
//  Created by Evelise Guenda on 5/25/24.
//

import Foundation

struct MovieResponse : Decodable {
    let results : [Movie]
}

struct Movie : Decodable
{
    let id: Int
    let title : String
    let backdropPath : String?
    let posterPath : String?
    let overview : String
    let voteAverage : Double
    let voteCount : Int
    let runtime : Int?
}
