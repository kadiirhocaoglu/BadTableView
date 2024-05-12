//
//  ViewController.swift
//  BadTableViewController
//
//  Created by Kadir Hocaoğlu on 12.05.2023.
//
import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var badTableView: UITableView!
    
    var cells: [UITableViewCell] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
        cellsSetup()
        tableViewSetup()
    }
}
extension ViewController {
    
    
    func cellsSetup() {
        for _ in 0...1000 {
            let cell = UITableViewCell()
            cell.textLabel?.text = "Wow so bad"
            cells.append(cell)
        }
    }
    
    func tableViewSetup() {
        badTableView.rowHeight = UITableView.automaticDimension
        badTableView.estimatedRowHeight = 350
    }
    
}
extension ViewController: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cells.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = cells[indexPath.row]
        return cell
    }
}
