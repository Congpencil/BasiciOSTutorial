//
//  HomeViewController.swift
//  DemoTabbarController
//
//  Created by Le Phuong Tien on 12/6/19.
//  Copyright © 2019 Fx Studio. All rights reserved.
//

import UIKit

class HomeViewController: BaseViewController {
        
    @IBOutlet weak var tableview: UITableView!
    var viewmodel = HomeViewModel()

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - config
    override func setupUI() {
        super.setupUI()
        //title
        self.title = "Home"
        
        //tableview
        tableview.delegate = self
        tableview.dataSource = self
        
        let nib = UINib(nibName: "HomeCell", bundle: .main)
        tableview.register(nib, forCellReuseIdentifier: "cell")
        
        //navi
        let resetTabbarItem = UIBarButtonItem(image: UIImage(named: "ic-navi-refresh"), style: .plain, target: self, action: #selector(loadAPI))
        self.navigationItem.rightBarButtonItem = resetTabbarItem
    }
    
    override func setupData() {
    }
    
    func updateUI() {
        
    }

    //MARK: - API
    @objc func loadAPI() {
        print("LOAD API")
    }
}

//MARK: - Tableview Delegate & Datasource
extension HomeViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        10
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        200
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! HomeCell
        
        return cell
    }
    
    
}
