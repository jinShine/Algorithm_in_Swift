import UIKit

/*:
 ### 팩터리얼
  
  * n까지의 곱
 
 5! = 5 * 4 * 3 * 2 * 1
 */


var x = 1

for i in 1...5 {
 x *= i
}

print(x)
 
/*:
 ### 시그마
 
  * 공식 : n * (n + 1) / 2
 */

var x1 = 0

for i in 1...5 {
 x1 += i
}

print(x1)

/*:
 ### 재귀함수
 
  * 자기 자신을 호출하는 함수
  * 반복문 <-> 재귀함수
  * 재귀의 경우에는 종료 조건이 있어야된다.
 
  ### 문제 접근 방법
 
  * 반복문 -> Bottom-up 방식( 작은(1부터) 시작 )
  * 재귀함수 -> Top-down 방식( 큰(n부터) 시작 )
 */


// 재귀함수를 이용한 팩토리얼
func facFunc(_ n: Int) -> Int {
  if n <= 1 {
    return 1
  } else {
    return n * facFunc(n - 1)
  }
}

print(facFunc(5))

// 재귀함수를 이용한 시그마
func sigmaFunc(_ n: Int) -> Int {
  if n <= 1 {
    return 1
  } else {
    return n + sigmaFunc(n - 1)
  }
}

sigmaFunc(5)

// 재귀함수를 이용한 이진수 구하기

func getBinary(_ n: Int) -> String {
  if n < 2 {
    return String(n)
  } else {
    return String(getBinary(n / 2)) + String((n % 2))
  }
}

getBinary(11)


// 피보나치

var a = 0
var b = 1

for i in 1...5 {
  a = i
  b = a + b
}

func fibonacciFunc(_ n: Int) -> Int {
  if n < 1 {
    return 1
  } else {
    return fibonacciFunc(n - 1) + fibonacciFunc(n - 2)
  }
}

print(fibonacciFunc(5))


// comma

func comma(_ s: String) -> String {
  if s.count < 3 {
    return s
  } else {
    let remainderIndex = s.index(s.startIndex, offsetBy: 0) ..< s.index(s.endIndex, offsetBy: -3)
    let dropIndex = s.index(s.endIndex, offsetBy: -3) ..< s.index(s.endIndex, offsetBy: 0)
    
    return comma(String(s[remainderIndex])) + "," + String(s[dropIndex])
  }
}

comma("10000000")
