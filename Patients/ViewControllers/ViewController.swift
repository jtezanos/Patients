//
//  ViewController.swift
//  Patients
//
//  Created by Jason Tezanos on 11/6/19.
//  Copyright © 2019 Test. All rights reserved.
//

import UIKit

protocol DataUpdatable: class {
    func reloadData()
}

class ViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView! {
        didSet {
            tableView.delegate = self
            tableView.dataSource = self
        }
    }
    var viewModel: ViewModel?

    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel = ViewModel(delegate: self)
    }
    
}

extension ViewController: DataUpdatable {
    func reloadData() {
        tableView.reloadData()
    }
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel?.patients.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: R.reuseIdentifier.tableCell) as? TableCell, let data = viewModel?.patients[indexPath.row] else {
            return UITableViewCell()
        }
        
        cell.setup(with: data)
        
        return cell
    }
    
}

