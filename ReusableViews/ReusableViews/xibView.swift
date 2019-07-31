//
//  xibView.swift
//  ReusableViews
//
//  Created by WongMike on 31/7/2019.
//  Copyright © 2019 WongMike. All rights reserved.
//

import Foundation

import UIKit
@IBDesignable class xibView: UIView {
    @IBInspectable var strokeColor: UIColor = UIColor.black
    @IBInspectable var fillColor: UIColor = UIColor.clear
    var path: UIBezierPath?
    
    override class var layerClass: AnyClass {
        return CAShapeLayer.self
    }
    
    override func layoutSubviews() {
        guard let layer = layer as? CAShapeLayer else { return }
        layer.path = path?.cgPath
        layer.strokeColor = strokeColor.cgColor
        layer.fillColor = fillColor.cgColor
    }
    
    override func prepareForInterfaceBuilder() {
        let drawRect = CGRect(x: 0, y: 0, width: 128, height: 128)
        path = UIBezierPath(rect: drawRect)
        
        xibSetup()
    }
    
    
    
    var contentView:UIView?
    @IBInspectable var nibName:String?
    override func awakeFromNib() {
        super.awakeFromNib()
        xibSetup()
    }
    
    func xibSetup() {
        guard let view = loadViewFromNib() else { return }
        view.frame = bounds
        view.autoresizingMask =
            [.flexibleWidth, .flexibleHeight]
        addSubview(view)
        contentView = view
    }
    
    func loadViewFromNib() -> UIView? {
        guard let nibName = nibName else { return nil }
        let bundle = Bundle(for: type(of: self))
        let nib = UINib(nibName: nibName, bundle: bundle)
        return nib.instantiate(
            withOwner: self,
            options: nil).first as? UIView
    }
}
