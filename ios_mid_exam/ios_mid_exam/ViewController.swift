//
//  ViewController.swift
//  ios_mid_exam
//
//  Created by Vladislav Tsvetanov on 6.01.22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var movieTable: UITableView!
    
    var movies = Model()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}

extension ViewController:  UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            movies.movies.count
        }
        
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let data = movies.movies[indexPath.row]
        let cell: MovieTableCell? = tableView.dequeueReusableCell(withIdentifier: "movieCell", for: indexPath) as? MovieTableCell
        if let movieCell = cell {
            movieCell.movieImage.image = UIImage.init(imageLiteralResourceName:  data.photo)
            movieCell.movieTitle.text = data.title
            
            return movieCell
        }
        
        return MovieTableCell(style: .default, reuseIdentifier: "movieCell")
    }}

