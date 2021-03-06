//
//  SubjectTableView.swift
//  kyutech
//
//  Created by shogo okamuro on 2/14/16.
//  Copyright © 2016 shogo okamuro. All rights reserved.
//

import UIKit
import SHUtil

class SubjectTableView: UITableView {
    func setTitle(index: Int) -> String {
        if index == 0 { return Term()[NSUserDefaults.standardUserDefaults().integerForKey(Config.userDefault.term)] }
        var str = ""
        if index < LectureModel.HOL_NUM { return "" }
        
        let hol = index % (LectureModel.HOL_NUM + 1)
        let val = index / (LectureModel.HOL_NUM + 1)
        switch hol {
        case 1: str = WEEKS.Monday.name()
        case 2: str = WEEKS.Tuesday.name()
        case 3: str = WEEKS.Wednesday.name()
        case 4: str = WEEKS.Thursday.name()
        case 5: str = WEEKS.Friday.name()
        default: str = ""
        }
        
         return str + "曜日　" + String(val) + "限"
    }
    
}