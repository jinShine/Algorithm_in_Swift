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
 
 
 ---
 
 ## 알고리즘 측정 방법
 
 1. 시간 복잡도(Time Complexity)를 이용한 측정
  * 얼마나 오랜 시간이 걸렸는가
 
 2. 계산 복잡도를 이용한 측정
  * 얼마나 많은 반복을 하였는가
 
  2.1 Big O 표기법
    * O(n) : 필요한 계산 횟수가 입력크기 n과 비례할 때
    * O(1) : 필요한 계산 횟수가 입력크기 n과 무관할 때
 
 3. 공간 복잡도(Space Complexity)
  * 얼마나 많은 공간을 사용하였는가
 
 ---
 
 ### 팩터리얼
  
  * n까지의 곱
 
 5! = 5 * 4 * 3 * 2 * 1
 
 ```swift
 var x = 1
 
 for i in 1...5 {
  x *= i
 }
 
 // 120
 ```
 
 
 ### 시그마
 
  * 공식 : n * (n + 1) / 2
 
 ```swift
 var x = 0
 
 for i in 1...5 {
  x += i
 }
 
 // 15
 ```

 
 */
