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

struct Movie : Decodable, Identifiable
{
    //Naming the fields
    let id: Int
    let title : String
    let backdropPath : String?
    let posterPath : String?
    let overview : String
    let voteAverage : Double
    let voteCount : Int
    let runtime : Int?
    
    var backdropURL: URL
    {
        return URL(string: "htpps://image.tmdb.org/t/p/w500\(backdropPath ?? "")")!
    }
}
