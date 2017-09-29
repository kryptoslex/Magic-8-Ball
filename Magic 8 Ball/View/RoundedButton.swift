//
//  RoundedButton.swift
//  Magic 8 Ball
//
//  Created by Michael Jay Abalos on 29/09/2017.
//  Copyright © 2017 Michael Jay Abalos. All rights reserved.
//

import UIKit

class RoundedButton: UIButton {


    override func awakeFromNib() {
        self.layer.cornerRadius = 25
        self.clipsToBounds = true
    }


}
