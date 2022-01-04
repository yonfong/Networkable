//
//  ResponseData.swift
//  Networkable
//
//  Created by sky on 2022/1/4.
//

import Foundation
import Networkable

public struct ResponseData<T>: Codable where T: Codable {
    var code: Int
    var message: String?
    var data: T?
}

extension ResponseData: ResponseVerifiable {
    public var verifyResult: (errorCode: Int, errorMesasge: String?)? {
        if isValid {
            return nil
        } else {
            return (code, message)
        }
    }
    
    public var isValid: Bool {
        return code == 1
    }
}
