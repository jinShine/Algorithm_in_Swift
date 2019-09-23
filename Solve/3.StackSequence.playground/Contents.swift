import Foundation


/*:
 ### 스택수열
 * 백준 : 1874문제
 * 문제 유형: 스택, 그리디
 * [BAEKJOON](https://www.acmicpc.net/problem/2798)
 */


//var inputCount = 8
//var inputValue = "4 3 6 8 7 5 2 1".split(separator: " ").map { Int($0)! }
//var inputValue = "1 2 5 3 4".split(separator: " ").map { Int($0)! }

//var inputValue = "4 3 6 8 7 5 2 1".split(separator: " ").map { Int($0)! }

var inputCount = Int(readLine()!)!

var count = 1
var stack: [Int] = []
var result: [String] = []

for _ in (1...inputCount) {
    let data = Int(readLine()!)!
//    let data = inputValue[i - 1]
    while count <= data {
        stack.append(count)
        count += 1
        result.append("+")
    }
    
    if stack.last == data {
        stack.popLast()
        result.append("-")
    } else {
        print("No")
    }
}

result.forEach { print($0) }

