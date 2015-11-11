//
//  YesNoTableViewCell.swift
//  Calculator
//
//  Created by Saad Ahmed on 2015-11-10.
//  Copyright © 2015 Saad Ahmed. All rights reserved.
//

import UIKit

protocol YesNoCellDelegate{
    func settingOptionChanged(toOption: Bool)
}

class YesNoTableViewCell: UITableViewCell {

    var delegate: YesNoCellDelegate?
    var settingOption: Bool!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func populate(){
        self.detailTextLabel!.text = settingOption == true ? "YES" : "NO"
    }
    
    func setOption(opt: Bool){
        settingOption = opt
        delegate?.settingOptionChanged(settingOption)
    }
    

}
