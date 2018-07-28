//
//  main.swift
//  H20180728SwiftSyntax
//
//  Created by hwacdx on 2018/7/28.
//  Copyright © 2018年 hwacdx. All rights reserved.
//  练习 swift 语法

import Foundation

//1.类型别名
typealias audioSample = uint16

//如何使用？

//2.元组

//定义、新建
let http404Error = (404, "not found") //()语法
let http200Status = (statusCode: 200, description: "ok")//命名式

//读取
let (statusCode, statusMessage) = http404Error //()带变量
print("The status code is \(http404Error.0)") //.数字语法
print("The status code is \(http200Status.statusCode)")//.命名语法

//3.可选项
let convertedNumber: Int? = 66

//强制展开可选项 ？
//if convertedNumber != nil {
//    print("-->> convertedNumber:\(convertedNumber!)")
//}

//隐式展开可选项 （感叹号为隐式展开可选项）
let possibleStr: String? = "An option string."
let forcedStr: String = possibleStr!//requires an exclamation mark

let assumedStr: String! = "An implicitly unwrapped optional string."
let implicitStr: String = assumedStr//no need for an exclamation mark

//可选项绑定
//let possibleNumber = 11
//
//if let actualNumber = Int(possibleNumber) {
//
//}


