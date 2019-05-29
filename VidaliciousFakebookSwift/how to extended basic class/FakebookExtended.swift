//
//  FakebookExtended.swift
//  VidaliciousFakebookSwift
//
//  Created by vidalicious on 2019/5/29.
//  Copyright © 2019 vidalicious. All rights reserved.
//

import Foundation

/// Type that acts as a generic extension point for all `FakebookExtended` types.
public struct FakebookExtension<ExtendedType> {
    /// Stores the type or metatype of any extended type.
    let type: ExtendedType
    
    init(_ type: ExtendedType) {
        self.type = type
    }
}

/// Protocol describing the `vfs` extension points for Fakebook extended types.
public protocol FakebookExtended {
    associatedtype ExtendedType
    
    /// Static Fakebook extension point.
    static var vfs: FakebookExtension<ExtendedType>.Type { get set }
    /// Instance Fakebook extension point.
    var vfs: FakebookExtension<ExtendedType> { get set }
}

public extension FakebookExtended {
    static var vfs: FakebookExtension<Self>.Type {
        get { return FakebookExtension<Self>.self }
        set { }
    }
    
    var vfs: FakebookExtension<Self> {
        get { return FakebookExtension(self) }
        set { }
    }
}
