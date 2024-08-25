//
//  ViewCodeContract.swift
//
//
//  Created by Ricardo Bailoni on 25/08/24.
//

public protocol ViewCodeContract {
    func addViews()
    func setupConstraints()
    func configureViews()
    func setupViews()
}

public extension ViewCodeContract {
    func setupViews() {
        addViews()
        setupConstraints()
        configureViews()
    }
    
    func configureViews() {}
}

