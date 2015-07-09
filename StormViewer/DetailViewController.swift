//
//  DetailViewController.swift
//  StormViewer
//
//  Created by Luís Ferreira on 06/07/15.
//  Copyright © 2015 groupbuddies. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var detailImageView: UIImageView!

    var detailItem: String? {
        didSet {
            configureView()
        }
    }

    func configureView() {
        if let detail = self.detailItem {
            if let imageView = self.detailImageView {
                imageView.image = UIImage(named: detail)
            }
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.configureView()
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.hidesBarsOnTap = true
        self.title = detailItem
    }
    
    override func viewWillDisappear(animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.hidesBarsOnTap = false
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

