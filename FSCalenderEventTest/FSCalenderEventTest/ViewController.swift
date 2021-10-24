//
//  ViewController.swift
//  FSCalenderEventTest
//
//  Created by craptone on 2021/10/24.
//

import UIKit
import FSCalendar

class ViewController: UIViewController, FSCalendarDataSource {
    
    private var calender: FSCalendar!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        calender = FSCalendar(frame: view.bounds)
        
        calender.dataSource = self
        
        view.addSubview(calender)
    }
    
    func calendar(_ calendar: FSCalendar, numberOfEventsFor date: Date) -> Int {

        // dateから日を取り出す
        let day = Calendar.current.dateComponents([.day], from: date).day
        
        // 3日のときのEventの数を返す。
        if day == 3 {
            return 1
        }
        
        return 0
    }
    
}

