//
//  SignantureView.swift
//  signature
//
//  Created by 申潤五 on 2019/11/19.
//  Copyright © 2019 申潤五. All rights reserved.
//

import UIKit

class SignantureView: UIView {

    var lastPoint:CGPoint!
    var targetPoint:CGPoint!
    var path:UIBezierPath!
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        lastPoint = touches.first?.location(in: self)
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        targetPoint = touches.first?.location(in: self)
        path = UIBezierPath()
        path.move(to: lastPoint)
        path.addLine(to: targetPoint)
        draw()
    }
    
    func draw(){
        let sharpLayer = CAShapeLayer()
        sharpLayer.path = path.cgPath
        sharpLayer.lineWidth = 3
        sharpLayer.strokeColor = UIColor.gray.cgColor
        sharpLayer.fillColor = UIColor.black.cgColor
        self.layer.addSublayer(sharpLayer)
        self.setNeedsDisplay()
        lastPoint = targetPoint
    }
    func clearDraw(){
        self.layer.sublayers = nil
        self.setNeedsDisplay()
    }
    
}
