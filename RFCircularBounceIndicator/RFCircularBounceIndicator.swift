//
//  RFCircularBounceIndicator.swift
//  RFCircularBounceIndicator
//
//  Created by Rifat Firdaus on 18/09/22.
//

import UIKit

class RFCircularBounceIndicator: UIView {
    
    var circleColor: UIColor = .red
    
    init(circleColor: UIColor) {
        super.init(frame: .zero)
        self.circleColor = circleColor
        self.setupViews()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        self.setupViews()
    }
    
    private func setupViews() {
        self.backgroundColor = .clear
        
        var delay = 0.0
        [-50.0, 0.0, 50.0].forEach { anchorX in
            let viewCircle = createCircle(anchorX: anchorX)
            UIView.animate(
                withDuration: 0.5,
                delay: delay,
                options: [.autoreverse, .repeat],
                animations: {
                viewCircle.frame.origin = CGPoint(
                    x: viewCircle.frame.origin.x,
                    y: 50)
                viewCircle.alpha = 0.3
            }, completion: nil)
            delay += 0.2
        }

    }
    
    private func createCircle(anchorX: CGFloat) -> UIView {
        let lazyView = UIView()
        lazyView.translatesAutoresizingMaskIntoConstraints = false
        lazyView.layer.masksToBounds = false
        lazyView.clipsToBounds = false
        lazyView.backgroundColor = circleColor
        lazyView.layer.cornerRadius = 15
        self.addSubview(lazyView)
        
        lazyView.heightAnchor.constraint(
            equalToConstant: 30).isActive = true
        lazyView.widthAnchor.constraint(
            equalToConstant: 30).isActive = true
        lazyView.centerXAnchor.constraint(
            equalTo: self.centerXAnchor, constant: anchorX).isActive = true
        lazyView.centerYAnchor.constraint(
            equalTo: self.centerYAnchor, constant: 0).isActive = true
        
        return lazyView
    }
    
}
