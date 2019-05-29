//
//  BundleExtended.swift
//  VidaliciousFakebookSwift
//
//  Created by vidalicious on 2019/5/29.
//  Copyright © 2019 vidalicious. All rights reserved.
//

import Foundation

extension Bundle: FakebookExtended {}
public extension FakebookExtension where ExtendedType: Bundle {
    /// Returns all valid `cer`, `crt`, and `der` certificates in the bundle.
    var certificates: [SecCertificate] {
        return paths(forResourcesOfTypes: [".cer", ".CER", ".crt", ".CRT", ".der", ".DER"]).compactMap { path in
            guard
                let certificateData = try? Data(contentsOf: URL(fileURLWithPath: path)) as CFData,
                let certificate = SecCertificateCreateWithData(nil, certificateData) else { return nil }
            
            return certificate
        }
    }
    
    /// Returns all pathnames for the resources identified by the provided file extensions.
    ///
    /// - Parameter types: The filename extensions locate.
    /// - Returns:         All pathnames for the given filename extensions.
    func paths(forResourcesOfTypes types: [String]) -> [String] {
        return Array(Set(types.flatMap { type.paths(forResourcesOfType: $0, inDirectory: nil) }))
    }
}
