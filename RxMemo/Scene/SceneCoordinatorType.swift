//
//  SceneCoordinatorType.swift
//  RxMemo
//
//  Created by 김민국 on 2020/08/31.
//  Copyright © 2020 김민국. All rights reserved.
//

import Foundation
import RxSwift

protocol SceneCoordinatorType {
    @discardableResult
    func transition(to scene: Scene, using style: TransitionStyle, animated: Bool) -> Completable
    
    @discardableResult
    func close(animated: Bool) -> Completable
    
    
}
