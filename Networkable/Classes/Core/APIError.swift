//
//  APIError.swift
//  Networkable
//
//  Created by sky on 2022/1/4.
//

import Foundation
import Moya

/// 接口调用错误
public enum APIError: Swift.Error {
    /// 解析错误
    case parseError

    /// 服务器自定义错误
    case verifyError(code: Int, message: String?)
    
    /// moya 错误
    case moyaError(MoyaError)
}

extension APIError {
    public var errorDescription: String? {
        switch self {
        case .parseError:
            return "解析异常"
        case .verifyError(_, let message):
            return message
        case .moyaError(let moyaError):
            return moyaError.localizedDescription
        }
    }
}

/// 返回的数据校验，校验通过返回nil，否则返回对应的信息
public protocol ResponseVerifiable {
    var verifyResult: (errorCode: Int, errorMesasge: String?)? { get }
}

extension ResponseVerifiable {
    public var verifyResult: (errorCode: Int, errorMesasge: String?)? {
        return nil
    }
}
