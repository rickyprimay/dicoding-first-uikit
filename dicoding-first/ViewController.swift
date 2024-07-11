//
//  ViewController.swift
//  dicoding-first
//
//  Created by Ricky Primayuda Putra on 11/07/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var profileImageView: UIImageView!
    @IBOutlet weak var followedButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        setupCircleImageView()
    }
    
    private var isFollow = false
    @IBAction func setFollowed(_ sender: UIButton) {
        isFollow = !isFollow
        followedButton.setTitle(isFollow ? "Following" : "Follow", for: .normal)
    }
    
    private func setupCircleImageView(){
        profileImageView.layer.borderWidth = 1
        profileImageView.layer.masksToBounds = false
        profileImageView.layer.borderColor = UIColor.black.cgColor
        profileImageView.layer.cornerRadius = profileImageView.frame.height/2
        profileImageView.clipsToBounds = true
    }
    

}

