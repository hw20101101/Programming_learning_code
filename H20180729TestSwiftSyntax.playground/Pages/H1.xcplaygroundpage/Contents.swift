//: Playground - noun: a place where people can play

import UIKit

//1.类型别名
//typealias audioSample = uint16

//如何使用？

//2.元组

//定义、新建
let http404Error = (404, "not found") //()语法
let http200Status = (statusCode: 200, description: "ok")//命名式

//读取
let (statusCode, statusMessage) = http404Error //()带变量
print("The status code is \(http404Error.0)") //.数字语法
print("The status code is \(http200Status.statusCode)")//.命名语法

//元组比较
if (1, "zebra") < (2, "apple") {
    print("-->> true because 1 is less than 2")
} else {
    print("-->> false")
}

if (4, "dog") == (4, "dog") {
    print("true because 4 is equal to 4, and dog is equal to dog")
} else {
    print("-->> false")
}

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

//4.错误处理
//fun canThrowAn

//5.断言和先决条件
let age = 1
assert(age >= 0, "A person‘s age cannot be less than zero")//如果条件为true，代码则继续执行，否则输出后面的信息

let index = 2
precondition(index > 0, "Index must be greater than zero")//如果条件为true，代码则继续执行，否则输出后面的信息

//6.三元条件运算符
let question = true
let answer1 = "one"
let answer2 = "two"

//如果 question 为true，则返回 answer1，否则返回 answer2
let three = question ? answer1 : answer2

//7.合并空值运算符
//例子1
let a: String? = "aa"
let b = "bb"

//如果 a 有值则展开，如果 a 为 nil 则返回 b
let c = a ?? b

//例子2
let defaultColorName = "red"
var userDefinedColorName: String? //defaults to nil
var colorNameToUse = userDefinedColorName ?? defaultColorName
// userDefinedColorName is nil，so defaultColorName is set to the default of 'red'

//8.区间运算符
//闭区间运算符
//a...b：定义的范围是 a 到 b，包含 a 和 b，a 的值不能大于 b
for index_2 in 1...5 {//遍历所有你要用到的数字
    print("-->> index_2:\(index_2)")
}

//半开区间运算符
// a..<b: 只包含起始值，不包含结束值

//单侧区间
let range = ...5//让区间朝一个方向尽可能的远？

if range.contains(7) {
    print("-->> contains 7")
} else if range.contains(4) {
    print("-->> contains 4")
} else {
    print("-->> false")
}


