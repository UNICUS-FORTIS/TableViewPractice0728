//
//  Movie.swift
//  TableViewPtactice0728
//
//  Created by LOUIE MAC on 2023/07/29.
//

import UIKit

struct Movie {
    
    var movieImage: UIImage? {
        return UIImage(named: "\(title).png") ?? UIImage(systemName: "star")
    }
    let title: String
    let releaseDate: String
    let runtime: Int
    let overview: String
    let rate: Double
    
}
