//
//  ColorsViewController.swift
//  RandomColors
//
//  Created by Juan Francisco Dorado Torres on 16/04/20.
//  Copyright © 2020 Juan Francisco Dorado Torres. All rights reserved.
//

import UIKit

class ColorsViewController: UIViewController {

  // MARK: - View Lifecycle

  override func viewDidLoad() {
    super.viewDidLoad()
  }
}

// MARK: - UITableView Delegates

extension ColorsViewController: UITableViewDelegate, UITableViewDataSource {

  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return 50
  }

  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    return UITableViewCell()
  }

  func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    performSegue(withIdentifier: "\(ColorDetailsViewController.self)", sender: nil)
  }
}
