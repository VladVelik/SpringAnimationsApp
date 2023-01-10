//
//  Animation.swift
//  SpringAnimationsApp
//
//  Created by Sosin Vladislav on 10.01.2023.
//

import SpringAnimation

struct Animation {
    let name: String
    let curve: String
    let force: Double
    let duration: Double
    let delay: Double
    
    var getDescription: String {
        """
        preset: \(name)
        curve: \(curve)
        force: \(String(format: "%.02f", force))
        duration: \(String(format: "%.02f", duration))
        delay: \(String(format: "%.02f", delay))
        """
    }
    
    static func getRandomAnimation() -> Animation {
        let list = AnimationList()
        
        return Animation(
            name: list.animations.randomElement()?.rawValue ?? "shake",
            curve: list.curves.randomElement()?.rawValue ?? "spring",
            force: Double.random(in: 1...1.5),
            duration: Double.random(in: 0.5...2),
            delay: Double.random(in: 0.2...0.5)
        )
    }
}
