//
//  NetworkClient.swift
//  Networking
//
//  Created by Brennan Stehling on 3/23/17.
//  Copyright © 2017 SmallSharpTools LLC. All rights reserved.
//

import Foundation

open class NetworkClient: NSObject {

    public static let sharedInstance = NetworkClient()

    fileprivate override init() {
        super.init()
    }

    open func doNetworkingStuff() {}

}
