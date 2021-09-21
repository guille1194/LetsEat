//
//  Device.swift
//  LetsEat
//
//  Created by macbook on 03/09/21.
//

import UIKit

enum Device {
    static var isPhone: Bool {
        return UIDevice.current.userInterfaceIdiom == .phone
    }
    static var isPad: Bool {
        return UIDevice.current.userInterfaceIdiom == .pad
    }
}
