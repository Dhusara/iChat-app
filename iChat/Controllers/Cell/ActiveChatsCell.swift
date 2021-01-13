//
//  ActiveChatsCell.swift
//  iChat
//
//  Created by Serhii Demianenko on 13.01.2021.
//  Copyright © 2021 Serhii Demianenko. All rights reserved.
//

import UIKit

protocol SelfConfiguringCell {
    static var reuseId: String {get}
    func configure(with value: MChat)
}

class ActiveChatsCell: UICollectionViewCell, SelfConfiguringCell {
    
    static var reuseId: String = "ActiveChatsCell"
    
    let friendImageView = UIImageView()
    let friendName = UILabel(text: "User name", font: .laoSangamMN20())
    let lastMessage = UILabel(text: "How are you?", font: .laoSangamMN18())
    let gradientView = UIView()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .green
        setupConstraints()
    }
    
    func configure(with value: MChat) {
        
    }
    
    private func setupConstraints() {
        friendImageView.translatesAutoresizingMaskIntoConstraints = false
        gradientView.translatesAutoresizingMaskIntoConstraints = false
        friendName.translatesAutoresizingMaskIntoConstraints = false
        lastMessage.translatesAutoresizingMaskIntoConstraints = false
        
        friendImageView.backgroundColor = .red
        
        addSubview(friendImageView)
        
        NSLayoutConstraint.activate([
            friendImageView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            friendImageView.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            friendImageView.heightAnchor.constraint(equalToConstant: 78),
            friendImageView.widthAnchor.constraint(equalToConstant: 78)
        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

// MARK: - SwiftUI
import SwiftUI

struct ActiveChatsProvider: PreviewProvider {
    static var previews: some View {
        ContainerView().edgesIgnoringSafeArea(.all)
    }
    
    struct ContainerView: UIViewControllerRepresentable {
        
        let tabBarVC = MainTabBarController()
        
        func makeUIViewController(context: UIViewControllerRepresentableContext<ActiveChatsProvider.ContainerView>) -> MainTabBarController {
            return tabBarVC
        }
        
        func updateUIViewController(_ uiViewController: ActiveChatsProvider.ContainerView.UIViewControllerType, context: UIViewControllerRepresentableContext<ActiveChatsProvider.ContainerView>) {
            
        }
    }
}
