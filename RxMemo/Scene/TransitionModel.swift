//
//  TransitionModel.swift
//  RxMemo
//
//  Created by 김민국 on 2020/08/31.
//  Copyright © 2020 김민국. All rights reserved.
//

import Foundation

enum TransitionStyle {
    case root
    case push
    case modal
}

enum TransitionError: Error {
    case navigationControllerMissing
    case cannotPop
    case unknown
}
