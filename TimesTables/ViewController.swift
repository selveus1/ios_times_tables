//
//  ViewController.swift
//  TimesTables
//
//  Created by Athena on 2/5/18.
//  Copyright © 2018 Sheena Elveus. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    let numsRows = 101
    var num = 1
    @IBOutlet var slider: UISlider!
    @IBOutlet var currentValue: UILabel!
    @IBOutlet var table: UITableView!
    
    
    @IBAction func sliderChanged(_ sender: Any) {
        var intValue = Int(slider.value)
        num = intValue
        currentValue.text = String("Current Times Table : \(intValue)")
        table.reloadData()
    }
    
    internal func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return numsRows
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        
        let cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "Cell")
        cell.textLabel?.text = String( "\(num) x \(indexPath.row) = \(num*(indexPath.row))" )
        return cell
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

