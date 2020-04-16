//
//  ColorsViewController.swift
//  RandomColors
//
//  Created by Juan Francisco Dorado Torres on 16/04/20.
//  Copyright © 2020 Juan Francisco Dorado Torres. All rights reserved.
//

import UIKit

class ColorsViewController: UIViewController {

  // MARK: - Properties

  var colors = [UIColor]()

  // MARK: - View Lifecycle

  override func viewDidLoad() {
    super.viewDidLoad()
    createRandomColors()
  }

  // MARK: - Methods

  private func createRandomColors() {
    for _ in 0 ..< 50 {
      colors.append(.random())
    }
  }

  // MARK: - Navigation

  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    if segue.identifier == "\(ColorDetailsViewController.self)",
      let colorDetailsVC = segue.destination as? ColorDetailsViewController,
      let color = sender as? UIColor {
      colorDetailsVC.color = color
    }
  }
}

// MARK: - UITableView Delegates

extension ColorsViewController: UITableViewDelegate, UITableViewDataSource {

  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return colors.count
  }

  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "ColorCell", for: indexPath)
    cell.backgroundColor = colors[indexPath.row]
    return cell
  }

  func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    let color = colors[indexPath.row]
    performSegue(withIdentifier: "\(ColorDetailsViewController.self)", sender: color)
  }
}
