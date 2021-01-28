//
//  ViewModelBindableType.swift
//  RxMemo
//
//  Created by 김민국 on 2020/08/31.
//  Copyright © 2020 김민국. All rights reserved.
//

import UIKit

protocol ViewModelBindableType {
    associatedtype ViewModelType
    
    var viewModel: ViewModelType! { get set }
    func bindViewModel()
}

extension ViewModelBindableType where Self: UIViewController{
    mutating func bind(viewModel: Self.ViewModelType) {
        self.viewModel = viewModel
        loadViewIfNeeded()
        
        bindViewModel()
    }
}
