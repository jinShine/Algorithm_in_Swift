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

func getBinary




