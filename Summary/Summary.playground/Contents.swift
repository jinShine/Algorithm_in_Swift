import UIKit


/*:
 
 ## 알고리즘 풀때 키보드 입력방법
 
 ```swift
 let value = readLine()
 ```
 
 * 1 2 3 4 일 경우
 ```swift
 let nums = readLine()!.split(separator: " ").map { Int($0)! }
 
 // [1, 2, 3, 4]
 
 ```
 
 ---
 
 ## 제곱근
 
 * sqrt
 
 ```swift
 let num: Double = 16
 sqrt(num)
 
 // 4
 ```
 
 ---
 
 ## 진법변환
 
 * radix
 
 1. 10진법 변환 방법 ( Int(text: radix:) )
 
 ```swift
 let hex = "bb0"
 let decimal = Int(hex, radix: 16)!
 
 // 2992
 
 let binary = "111"
 let decimal = Int(binary, radix: 2)!
 
 // 7
 ```
 
 2. 10진수를 받고 n집법으로 변환하고 싶을때!
 ( String(value: radix: uppercase: )
 */
