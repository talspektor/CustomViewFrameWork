//
//  CostumView.swift
//  CodeLayout
//
//  Created by user140592 on 12/20/18.
//  Copyright © 2018 talspektor. All rights reserved.
//

import UIKit

public extension UIColor {
    static let costomBlack = UIColor(red: 51/255, green: 51/255, blue: 51/255, alpha: 1)
    static let mainBackground = UIColor(red: 250/255, green: 250/255, blue: 250/255, alpha: 0.95)
}

public class CostumView : UIView  {
    
    let containerView : UIView = {
        let view = UIView()
        view.setContentHuggingPriority(UILayoutPriority.defaultHigh, for: .vertical)
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .mainBackground
        view.layer.cornerRadius = 8
        view.layer.masksToBounds = true
        return view
        
    }()
    
    let topContainerView : UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
        
    }()
    
    let titleView : UILabel = {
        let title = UILabel()
        title.translatesAutoresizingMaskIntoConstraints = false
        title.text = "this is the title"
        title.numberOfLines = 1
        title.font = UIFont(name: "Arial", size: 18)
        title.textColor = .costomBlack
        return title
    }()
    
    let imageView : UIImageView = {
        let view = UIImageView()
        view.backgroundColor = .green
        view.translatesAutoresizingMaskIntoConstraints = false
        view.layer.masksToBounds = false
        view.clipsToBounds = true
        view.layer.cornerRadius = view.frame.height / 2
        
        return view
        
    }()
    
    let contentLabel : UILabel = {
        let label = UILabel()
        label.text = "some text for filling the label with allot of text and more text..."
        label.numberOfLines = 2
        label.font = UIFont(name: "Arial", size: 14)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .costomBlack
        return label
    }()
    
    let okButton : RoundButton = {
        let button = RoundButton(type: .system)
        button.setTitle("ok button ", for: .normal)
        button.titleLabel?.font = UIFont(name: "Arial Rounded MT Bold ", size: 14)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14)
        return button
    }()
    
    let dismissButton : RoundButton = {
        let button = RoundButton(type: .system)
        button.titleLabel?.font = UIFont(name: "Arial", size: 14)
        button.setTitle("dismiss button ", for: .normal)
        return button
    }()
    
    public override func layoutSubviews() {
        
        topContainerView.addSubview(titleView)
        topContainerView.addSubview(imageView)
        topContainerView.addSubview(contentLabel)
        
        containerView.addSubview(topContainerView)
        
        containerView.addSubview(okButton)
        containerView.addSubview(dismissButton)

        self.addSubview(containerView)
        
        setConstriants()
    }
    
    public func setConstriants(){
        // containerView constraints
        NSLayoutConstraint.activate([
            containerView.topAnchor.constraint(equalTo: self.topAnchor),
            containerView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant:10),
            containerView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant:-10),
            containerView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: 0)
            ])
        // topContainerView constriants
        NSLayoutConstraint.activate([
            topContainerView.topAnchor.constraint(equalTo: containerView.topAnchor),
            topContainerView.leadingAnchor.constraint(equalTo: containerView.leadingAnchor),
            topContainerView.trailingAnchor.constraint(equalTo: containerView.trailingAnchor),
            topContainerView.bottomAnchor.constraint(equalTo: okButton.topAnchor)
            ])
        // tittleView constriants
        NSLayoutConstraint.activate([
            titleView.topAnchor.constraint(equalTo: topContainerView.topAnchor, constant : 10),
            titleView.leadingAnchor.constraint(equalTo: topContainerView.leadingAnchor, constant: 10),
            titleView.trailingAnchor.constraint(equalTo: imageView.leadingAnchor, constant: -10),
        
            ])
        // imageView constriants
        NSLayoutConstraint.activate([
            imageView.topAnchor.constraint(equalTo: topContainerView.topAnchor, constant : 10),
            imageView.trailingAnchor.constraint(equalTo: topContainerView.trailingAnchor, constant: -10),
            imageView.heightAnchor.constraint(equalToConstant: 36),
            imageView.widthAnchor.constraint(equalTo: imageView.heightAnchor)
            ])
        // contentLabel constraints
        NSLayoutConstraint.activate([
            contentLabel.topAnchor.constraint(equalTo: titleView.bottomAnchor, constant: 10),
            contentLabel.trailingAnchor.constraint(equalTo: titleView.trailingAnchor, constant: 0),
            contentLabel.leadingAnchor.constraint(equalTo: titleView.leadingAnchor, constant: 0)
            ])
        // okButton constraints
        NSLayoutConstraint.activate([
            okButton.heightAnchor.constraint(equalToConstant: 30),
            okButton.bottomAnchor.constraint(equalTo: containerView.bottomAnchor, constant: -10),
            okButton.trailingAnchor.constraint(lessThanOrEqualTo: containerView.trailingAnchor, constant:-24),
            okButton.leadingAnchor.constraint(equalTo: dismissButton.trailingAnchor, constant: 20),
//            okButton.topAnchor.constraint(equalTo: titleView.bottomAnchor, constant: 30)
            ])
        // dismissButton constraints
        NSLayoutConstraint.activate([
            dismissButton.heightAnchor.constraint(equalTo: okButton.heightAnchor),
            dismissButton.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 20),
            dismissButton.topAnchor.constraint(equalTo: okButton.topAnchor, constant: 0),
            dismissButton.bottomAnchor.constraint(equalTo: okButton.bottomAnchor, constant: 0)
            ])
    }
}

