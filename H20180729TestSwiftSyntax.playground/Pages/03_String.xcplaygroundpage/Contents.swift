//: [Previous](@previous)

import Foundation

//9.字符串和字符 （字符串是值类型）
//字符串字面量
//三个双引号可以包一段字符串，以最后一个三引号来计算空格？
let linesWithIndentation = """
This line doesn't begin with whitespace.
This line begins with four spaces.
This line doesn't begin with whitespace.
"""

//初始化一个空字符串
var emptyStr = ""
var anotherEmptyStr = String()

//判断是否为空
if emptyStr.isEmpty {//isEmpty是属性，不是方法
    print("-->> emptyStr.isEmpty true")
} else {
    print("-->> emptyStr.isEmpty false")
}

//遍历字符串的每一个字符
for character in "dog?" {
    print("-->> character:\(character)")
}

//通过传入 Character 值来构造字符串
let catCharacter: [Character] = ["c", "a", "t"]
let catStr = String(catCharacter)
print("-->> catStr:\(catStr)")

//字符串索引
let greeting = "Guten Tag!"
//greeting[greeting.startIndex]
//greeting[greeting.index(before: greeting.endIndex)]
//greeting[greeting.index(after: greeting.startIndex)]

//获取一个从0开始，到第七个为止的索引
//let index = greeting.index(greeting.startIndex, offsetBy: 7)
//greeting[index]

//使用indices属性来访问字符串中每个字符的索引
for index in greeting.indices {
    print("\(greeting[index])")
}

//在索引位置插入对应的字符
var welcome = "hello"
welcome.insert("!", at: welcome.endIndex)//插入一个字符

welcome.insert(contentsOf: " there", at: welcome.index(before: welcome.endIndex))//插入另一个字符串

//在索引位置移除字符
welcome.remove(at: welcome.index(before: welcome.endIndex))//移除一个字符

//定义一个范围：从welcome的最后一个索引开始，向左移6位
let range = welcome.index(welcome.endIndex, offsetBy: -6)..<welcome.endIndex
welcome.removeSubrange(range)//移除一段字符

//子字符串
//用逗号分隔符取出第一个子字符串
let greeting2 = "Hello, world!"
let index = greeting2.index(of: ",") ?? greeting2.endIndex
let beginning = greeting2[..<index]

let newStr =  String(beginning)
//子字符串会和原字符串共用一段内存空间

//UTF-8 表示法
let dogStr = "Dog!!🐶"
for codeUnit in dogStr.utf8 {
    print("UTF-8 -->>  \(codeUnit) ")
}

//UTF-16表示法
for codeUnit in dogStr.utf16 {
    print("UTF-16 -->> \(codeUnit) ")
}

//Unicode表示法
for scalar in dogStr.unicodeScalars {
    print("Unicode -->> \(scalar.value) ")
}
