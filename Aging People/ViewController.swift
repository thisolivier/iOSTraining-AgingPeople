//
//  ViewController.swift
//  Aging People
//
//  Created by Olivier Butler on 11/09/2017.
//  Copyright © 2017 Olivier Butler. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var masterTable: UITableView!
    var peopleArr = [
        "Sunny Dee",
        "Samantha Dellacroix",
        "Hussy Charlotte",
        "Flaming Heroine",
        "Katy Fearless",
        "Jocasta Sandbury",
        "Melissa Enterdown",
        "Hoozie Junkfort",
        "Lizzy Larg",
        "Gretta Hurtful",
        "Victoria Driller",
        "Pillbox Queen"
    ]
    override func viewDidLoad() {
        super.viewDidLoad()
        masterTable.dataSource = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

extension ViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return peopleArr.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let personCell = tableView.dequeueReusableCell(withIdentifier: "Person", for:indexPath)
        let randomAge = Int(arc4random_uniform(UInt32(90))) + 8
        personCell.textLabel?.text = peopleArr[indexPath.row]
        personCell.detailTextLabel?.text = "Has lived \(randomAge) years"
        return personCell
    }
}
