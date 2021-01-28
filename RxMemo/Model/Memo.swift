//
//  Memo.swift
//  RxMemo
//
//  Created by 김민국 on 2020/08/27.
//  Copyright © 2020 김민국. All rights reserved.
//

import Foundation

struct Memo: Equatable {
    var content: String
    var insertDate: Date
    var identity: String
    
    init(content: String, insertDate: Date = Date()) {
        self.content = content
        self.insertDate = insertDate
        self.identity = "\(insertDate.timeIntervalSinceReferenceDate)"
    }
    
    init(original: Memo, updatedContent: String){
        self = original
        self.content = updatedContent
    }
}
