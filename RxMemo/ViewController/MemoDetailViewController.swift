//
//  MemoDetailViewController.swift
//  RxMemo
//
//  Created by 김민국 on 2020/08/31.
//  Copyright © 2020 김민국. All rights reserved.
//

import UIKit

class MemoDetailViewController: UIViewController, ViewModelBindableType {

    var viewModel: MemoDetailViewModel!
    
    @IBOutlet weak var listTableView: UITableView!
    
    @IBOutlet weak var deleteButton: UIToolbar!
    
    @IBOutlet weak var editButton: UIToolbar!
    
    @IBOutlet weak var shareButton: UIToolbar!
    
    override func viewDidLoad() {
        super.viewDidLoad()


    }
    

    func bindViewModel() {
        viewModel.title
            .drive(navigationItem.rx.title)
            .disposed(by: rx.disposeBag)
        
        viewModel.contents
            .bind(to: listTableView.rx.items) { tableView, row, value in
                switch row {
                case 0:
                    let cell = tableView.dequeueReusableCell(withIdentifier: "contentCell")!
                    cell.textLabel?.text = value
                    return cell
                case 1:
                    let cell = tableView.dequeueReusableCell(withIdentifier: "dateCell")!
                    cell.textLabel?.text = value
                    return cell
                default:
                    fatalError()
                }
            }
            .disposed(by: rx.disposeBag)
        
        
    }
    
}
