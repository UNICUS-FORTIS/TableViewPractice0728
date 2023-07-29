//
//  MovieCell.swift
//  TableViewPtactice0728
//
//  Created by LOUIE MAC on 2023/07/29.
//

import UIKit

class MovieCell: UITableViewCell {

    @IBOutlet weak var movieImageView: UIImageView!
    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var releaseDate: UILabel!
    @IBOutlet weak var runningTime: UILabel!
    @IBOutlet weak var rate: UILabel!
    @IBOutlet weak var movieDescription: UILabel!
    
    
    func cellConfiguration(row: Movie) {
        movieImageView.image = row.movieImage
        title.text = (row.title)
        releaseDate.text = row.releaseDate
        runningTime.text = "\(String(row.runtime))분"
        rate.text = String(row.rate)
        movieDescription.text = row.overview
        movieDescription.numberOfLines = 6
    }
        
}
