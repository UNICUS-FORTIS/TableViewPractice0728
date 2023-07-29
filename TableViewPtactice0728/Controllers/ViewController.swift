//
//  ViewController.swift
//  TableViewPtactice0728
//
//  Created by LOUIE MAC on 2023/07/29.
//

import UIKit

final class ViewController: UIViewController {

    
    @IBOutlet weak var tableView: UITableView!
    
    let movieInfo = MovieInfo()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
    }
    
    
    
}


extension ViewController:UITableViewDataSource {

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movieInfo.movie.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "movieCell") as! MovieCell
        let row = movieInfo.movie[indexPath.row]
        
        cell.cellConfiguration(row: row)
        
        return cell
    }

}

