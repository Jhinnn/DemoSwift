//
//  Section50ViewController.swift
//  DemoSwift
//
//  Created by Arthur on 2017/8/21.
//  Copyright © 2017年 Arthur. All rights reserved.
//

import UIKit

class Section50ViewController: UIViewController {

    let cellID:String = "section1Cell"
    var tableView: UITableView?
    
    let titleArray = [
        "McPicker"
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupTableView()
        
    }
    
    func setupTableView() {
        
        tableView = UITableView(frame: KScreenBounds, style: .plain)
        tableView?.delegate = self
        tableView?.dataSource = self
        tableView?.rowHeight = 40
        tableView?.tableFooterView = UIView.init()
        view.addSubview(tableView!)
        
    }
    
    
    
}


extension Section50ViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return titleArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCell(withIdentifier: cellID)
        
        if cell == nil {
            cell = UITableViewCell.init(style: .default, reuseIdentifier: cellID)
            cell?.accessoryType = .disclosureIndicator
            cell?.selectionStyle = .none
        }
        cell?.textLabel?.text = titleArray[indexPath.row]
        cell?.textLabel?.font = SYSTEMFONT(size: 15)
        return cell!
    }

}

extension Section50ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        switch indexPath.row {
        case 0:
            navigationController?.pushViewController(McPickerViewController(), animated: true)
        default:
            break
        }
    }
}
