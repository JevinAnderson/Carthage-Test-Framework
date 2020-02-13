//
//  ViewController.swift
//  Sample app
//
//  Created by Anderson, Jevin on 2/7/20.
//  Copyright © 2020 Anderson, Jevin. All rights reserved.
//

import UIKit
import Carthage_Test_Framework

class ViewController: UIViewController {
  @IBOutlet var header: UILabel!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    header.text = cftRandomString(100)
  }
  
  @IBAction func showHalfSheet(_ sender: UIButton) {
    let vc = HalfSheetViewController(nibName: "HalfSheetViewController", bundle: nil)
    vc.modalPresentationStyle = .overCurrentContext
    vc.modalTransitionStyle = .crossDissolve
    present(vc, animated: true) {
      vc.finishAfterModalAnimation()
    }
  }
}

