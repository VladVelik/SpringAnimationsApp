//
//  ViewController.swift
//  SpringAnimationsApp
//
//  Created by Sosin Vladislav on 10.01.2023.
//

import SpringAnimation
import UIKit

class MainViewController: UIViewController {
    @IBOutlet weak var animationLabel: UILabel!
    @IBOutlet weak var animationView: SpringView!
    
    @IBAction func nextAnimationButtonPressed(_ sender: UIButton) {
        animationLabel.text = animation.getDescription
        setAnimationView()
            
        animation = Animation.getRandomAnimation()
        sender.setTitle("Run \(animation.name)", for: .normal)
    }
    
    private var animation = Animation.getRandomAnimation()
    
    private func setAnimationView() {
        animationView.animation = animation.name
        animationView.force = animation.force
        animationView.duration = animation.duration
        animationView.delay = animation.delay
        animationView.curve = animation.curve
        animationView.animate()
    }
}
