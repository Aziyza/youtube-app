//
//  ViewController.swift
//  youtube-app
//
//  Created by Mac on 6/10/20.
//  Copyright © 2020 Mac. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var model = Model()
    var videos = [Video]()
    
    @IBOutlet weak var tableview: UITableView! {
        didSet {
            tableview.delegate = self
            tableview.dataSource = self
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
    
        model.delegate = self
        model.getVideos()
    }


}


//MARK: - Configuration tableView
extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return videos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: Constants.VIDEOCELL_ID, for: indexPath)
        let title = self.videos[indexPath.row].title
        cell.textLabel?.text = title
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
}

extension ViewController: ModelDelegate {
    
    func videoFetched(_ videos: [Video]) {
        self.videos = videos
        
        tableview.reloadData()
    }

}
