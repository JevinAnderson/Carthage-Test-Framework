//
//  HalfSheetViewController.swift
//  Sample app
//
//  Created by Anderson, Jevin on 2/10/20.
//  Copyright © 2020 Anderson, Jevin. All rights reserved.
//

import UIKit

class HalfSheetViewController: UIViewController {
  let animationDuration = 0.3
  @IBOutlet weak var halfSheetView: UIView!
  @IBOutlet weak var bottomConstraint: NSLayoutConstraint!
  
  override func viewDidLoad() {
    super.viewDidLoad()
  }
  
  func finishAfterModalAnimation() {
    self.bottomConstraint.constant = 0
    UIView.animate(withDuration: animationDuration) {
      self.view.layoutIfNeeded()
      self.halfSheetView.layoutIfNeeded()
    }
  }
  
  
  @IBAction func dismissVC(_ sender: Any) {
    self.bottomConstraint.constant = -300
    
    UIView.animate(withDuration: animationDuration, animations: {
      self.view.layoutIfNeeded()
    }) { success in
      self.dismiss(animated: true, completion: nil)
    }
  }
}
