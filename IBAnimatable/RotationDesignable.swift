//
//  Created by Jake Lin on 12/5/15.
//  Copyright © 2015 IBAnimatable. All rights reserved.
//

import UIKit
import Darwin

/**
  It is not able to preview the rotation in IB. 
*/
public protocol RotationDesignable {
  var rotate: CGFloat { get set }
}

public extension RotationDesignable where Self: UIView {
  public func configRotate() {
    if !rotate.isNaN && rotate > -360 && rotate < 360 {
      self.transform = CGAffineTransformMakeRotation(CGFloat(M_PI) * rotate / 180)
    }
  }
}
