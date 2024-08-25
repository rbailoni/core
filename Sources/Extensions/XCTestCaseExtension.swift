//
//  File.swift
//  
//
//  Created by Ricardo Bailoni on 25/08/24.
//

import Foundation
import XCTest

public extension XCTestCase {
    func perform(event: UIControl.Event, from button: UIControl, target: NSObject, args: Any?) {
        guard let action = button.actions(forTarget: target, forControlEvent: event)?.first else { return }
        target.performSelector(onMainThread: Selector(action), with: args, waitUntilDone: true)
    }
    
    func checkMemoryLeak(for instance: AnyObject, file: StaticString = #file, line: UInt = #line) {
        addTeardownBlock { [weak instance] in
            XCTAssertNil(instance, file: file, line: line)
        }
    }
}
