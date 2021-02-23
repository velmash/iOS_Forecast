//
//  ApiError.swift
//  iOS_Forecast
//
//  Created by 윤형찬 on 2021/02/23.
//

import Foundation

enum ApiError: Error {
    case unknown
    case invalidUrl(String)
    case invalidResponse
    case failed(Int)
    case emplyData
}
