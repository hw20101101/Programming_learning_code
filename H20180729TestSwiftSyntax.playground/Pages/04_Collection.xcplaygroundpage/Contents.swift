//: [Previous](@previous)
// 集合类型

import Foundation

//三种集合类型: Array、Set、Dictionary

//1.数组 Array
//数组类型的完整写法: Array<Element>
//数组类型的简写语法: [Element]

//用 类型 + 初始化器 语法来创建一个空数组
var someInts = [Int]()
print("someInts is of type [Int] with \(someInts.count) items")

//已声明类型之后，用 空数组 字面量来创建一个空数组
someInts.append(3)
someInts = []

//使用默认值创建数组
var threeDoubles = Array(repeating: 0.0, count: 3)
//threeDoubles is of type [Double], and equals [0.0, 0.0, 0.0]

//数组字面量语法 [value 1, value 2, value 3]

var shoppingList: [String] = ["Eggs", "Milk"]
//可以省略:[String]，因为Swift自带类型推断

//使用 for-in 循环来遍历数组
let shoppingList = [1, 2, 3]
for item in shoppingList {
    print("-->> item:\(item)")
}

//使用 enumeratd() 方法来遍历，需要每个元素 + 索引值
for (index, value) in shoppingList.enumerated() {
    print("-->> item:\(index + 1): \(value)")
}

//2.合集 Set

